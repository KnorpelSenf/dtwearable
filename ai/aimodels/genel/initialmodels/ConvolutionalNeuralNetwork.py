from abc import abstractmethod
from sklearn.model_selection import train_test_split
import tensorflow as tf
from keras.models import Sequential
from  keras.layers import Dense
from keras.layers import Flatten
from keras.layers.convolutional import Conv1D
from keras.layers.convolutional import MaxPooling1D

from ai.aimodels.AbstractAIModel import AbstractAIModel
from numpy import array
import numpy as np

class ConvolutionalNeuralNetwork(AbstractAIModel):
    """ Convolutional Neural Network (CNN) with 1-Step Output """

    global cnn_model
    global graph

    def train(self, dataset_parameters, hyperparameters):
        """ The method that trains the model based on dataset parameters and hyperparameters """

        df = self.get_dataset(dataset_parameters)
        # df = self.windowing(df)
        X_train, X_test, y_train, y_test = self.split_dataset(df, dataset_parameters['test_ratio'],
                                                              dataset_parameters['window_size'])
        cnn_model = self.train_cnn(X_train, y_train, dataset_parameters['window_size'])
        graph = tf.get_default_graph()

        with graph.as_default():
            score, acc = self.test_cnn(cnn_model, X_test, y_test, dataset_parameters['window_size'])

        return cnn_model, {"score": score, "accuracy": acc}

    @abstractmethod
    def get_dataset(self, dataset_parameters):
        """
        According to the dataset parameters, the method that brings the dataset to be used in train and test will be implemented by subclasses.
        """
        pass

    def split_dataset(self, df, test_ratio, window_size):
        """ Method that divides dataset for train and test """

        X, y = self.split_sequences(df, window_size)

        return train_test_split(X, y, test_size=test_ratio, shuffle=False, stratify=None)

    def split_sequences(self, df, window_size):
        """ split a multivariate sequence into samples method"""
        """
        #window_size_in = 3
        #window_size_out = 1
        """
        sequences = df.to_numpy()
        X, y = list(), list()
        for i in range(len(sequences)):
            # find the end of this pattern
            end_ix = i + window_size
            # check if we are beyond the dataset
            if end_ix > len(sequences) - 1:
                break
            # gather input and output parts of the pattern
            seq_x, seq_y = sequences[i:end_ix, :], sequences[end_ix, :]
            X.append(seq_x)
            y.append(seq_y)

        X, y = array(X), array(y)
        return X, y

    def train_cnn(self, X_train, y_train, window_size):
        """ Method that creates cnn model using x_train and y_train """

        # the dataset knows the number of features, e.g. 2
        n_features = X_train.shape[2]

        # define model
        model = Sequential()
        model.add(Conv1D(filters=64, kernel_size=2, activation='relu', input_shape=(window_size, n_features)))
        model.add(MaxPooling1D(pool_size=2))
        model.add(Flatten())
        model.add(Dense(50, activation='relu'))
        model.add(Dense(n_features))
        model.compile(optimizer='adam', loss='mse', metrics=['accuracy'])

        return model

    def test_cnn(self, cnn_model, X_test, y_test, window_size):
        """ Method that calculates score using X_test and y_test on the created cnn model """
        X_test = X_test[np.size(X_test, 0) - 1:, :]
        # the dataset knows the number of features, e.g. 2
        n_features = X_test.shape[2]
        # window_size_in = 3
        X_test = X_test.reshape(1, window_size, n_features)
        yha_predict = cnn_model.predict(X_test, verbose=0)
        print(yha_predict)

        """ Evaluation function of an input given a score """
        score, acc = cnn_model.evaluate(X_test, yha_predict, verbose=0)
        print("Score:", score)
        print(("Accuracy", acc))

        return score, acc

    def rename_columns(self, df, identifier='Feat_'):
        """ TODO: General forecast will be written, especially the names of the columns """
        """ Method to change df column names """

        col_count = len(df.columns)
        column_names = []
        for i in range(col_count - 1):
            column_names.append(identifier + str(i))
        column_names.append('Label')
        df.columns = column_names
