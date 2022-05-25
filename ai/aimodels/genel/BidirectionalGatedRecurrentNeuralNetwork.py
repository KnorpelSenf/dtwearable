from abc import abstractmethod
from sklearn.model_selection import train_test_split
import tensorflow as tf
from keras.models import Sequential
from  keras.layers import Dense
from keras.layers import Bidirectional, GRU

from ai.aimodels.AbstractAIModel import AbstractAIModel
from numpy import array
import numpy as np


class BidirectionalGatedRecurrentNeuralNetwork(AbstractAIModel):
    """ Bidirectional Gated Recurrent Neural Network (bil_gru) with 1-Step Output """

    global bil_gru_model
    global graph

    def train(self, dataset_parameters, hyperparameters):
        """ method that trains the model based on dataset parameters and hyperparameters """

        df = self.get_dataset(dataset_parameters)
        # df = self.windowing(df)
        X_train, X_test, y_train, y_test = self.split_dataset(df, dataset_parameters['test_ratio'],
                                                              hyperparameters['n_steps'],)
        bil_gru_model = self.train_bil_gru(X_train, y_train, hyperparameters['n_steps'])
        graph = tf.get_default_graph()

        with graph.as_default():
            score, acc = self.test_bil_gru(bil_gru_model, X_test, y_test, hyperparameters['n_steps'])

        return bil_gru_model, {"score": score, "accuracy": acc}

    @abstractmethod
    def get_dataset(self, dataseÏt_parameters):
        """
        According to the dataset parameters, the method that brings the dataset to be used in train and test will be implemented by subclasses.
        """
        pass

    def split_dataset(self, df, test_ratio, n_steps):
        """ Method that divides dataset for train and test """

        X, y = self.split_sequences(df, n_steps)

        return train_test_split(X, y, test_size=test_ratio, shuffle=False, stratify=None)

    def split_sequences(self, df, n_steps):
        """ split a multivariate sequence into samples method"""
        """
        #n_steps_in = 3
        #n_steps_out = 1
        """
        sequences = df.to_numpy()
        X, y = list(), list()
        for i in range(len(sequences)):
            # find the end of this pattern
            end_ix = i + n_steps
            # check if we are beyond the dataset
            if end_ix > len(sequences) - 1:
                break
            # gather input and output parts of the pattern
            seq_x, seq_y = sequences[i:end_ix, :], sequences[end_ix, :]
            X.append(seq_x)
            y.append(seq_y)
        X, y = array(X), array(y)
        return X, y

    def train_bil_gru(self, X_train, y_train, n_steps):
        """ Method that creates a bil_gru model using x_train and y_train """

        # flatten input and choose the number of features
        n_features = X_train.shape[2]
        #n_steps = 3

        # define model
        model = Sequential()
        model.add(Bidirectional(GRU(100, activation='relu', return_sequences=True, input_shape=(n_steps, n_features))))
        model.add(Bidirectional(GRU(100, activation='relu')))
        model.add(Dense(n_features))
        model.compile(optimizer='adam', loss='mse', metrics=['accuracy'])

        # fit model
        model.fit(X_train, y_train, epochs=400, verbose=0)

        return model

    def test_bil_gru(self, bil_gru_model, X_test, y_test, n_steps):
        """ Method that calculates score using X_test and y_test on the created bil_gru model """
        X_test = X_test[np.size(X_test, 0) - 1:, :]
        #n_steps = 3
        # flatten input and choose the features
        n_features = X_test.shape[2]
        X_test = X_test.reshape(1, n_steps, n_features)
        yha_predict = bil_gru_model.predict(X_test, verbose=0)
        print(yha_predict)

        """ Evaluation function of an input given a score """
        (score, acc) = bil_gru_model.evaluate(X_test, yha_predict, verbose=0)
        print("Score:", score)

        return (score, acc)

    def rename_columns(self, df, identifier='Feat_'):
        """ TODO: General forecast will be written, especially the names of the columns """
        """ Method to change df column names """

        col_count = len(df.columns)
        column_names = []
        for i in range(col_count - 1):
            column_names.append(identifier + str(i))
        column_names.append('Label')
        df.columns = column_names
