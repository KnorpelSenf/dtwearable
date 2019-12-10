import pickle
from _lsprof import profiler_entry
from datetime import datetime

import numpy as np
from flask import jsonify

from keymind.ai_predictions.Predict import Predict
from keymind.daos.AIModelDAO import AIModelDAO
from keymind.daos.PredictionDAO import PredictionDAO
from keymind.models.Prediction import Prediction


class PredictionService():
    """ Predict sınıfını kullanarak üretilen tahminlerin veri tabanına kaydının yapıldığı sınıf """

    ai_model_dao = AIModelDAO()
    prediction_dao = PredictionDAO()

    def make_prediction(self, ai_model_class, reference_table, reference_id, prediction_input):
        """ Yapay zeka modeli, ilgili referans tablosu, referans id'si ve tahmin girdisini kullanarak tahmin üreten metod
            Tahmin sonrası prediction_dto veri tabanına kayıt edilir
            prediction_dto objesi return edilir
        """

        ai_model_dto = self.ai_model_dao.find_last_enabled_version_by_name(ai_model_class)
        model = self.load_model(ai_model_dto.model_url)

        prediction_dto = Prediction()
        prediction_dto.reference_table = reference_table
        prediction_dto.reference_id = reference_id
        prediction_dto.prediction_input = jsonify(prediction_input)
        prediction_dto.prediction_date = datetime.now()
        prediction_dto.ai_model_id = ai_model_dto.id

        try:
            new_prediction = self.predict(model, prediction_input)
            prediction_dto.prediction_value = new_prediction
            self.prediction_dao.save_to_db(prediction_dto)
            return prediction_dto
        except Exception as e:
            prediction_dto.prediction_error = str(e)
            self.prediction_dao.save_to_db(prediction_dto)
            raise Exception("Error occured while predicting")

    def predict(self, model, prediction_input):
        """
        Modeli kullanarak tahmin yapan metod
        Örnek input formatı
        {
         "ates": [35, 36],
         "nabız": [100, 120]
        }

        {
            "ates": [35, 36]
        }
        """

        input = []
        for key in prediction_input:
            input.append(prediction_input[key])

        Xnew = np.array([input])
        return model.predict(Xnew)

    def load_model(self, model_url):
        """ Modeli dosya sisteminden yükleyen metod """

        return pickle.load(open(model_url, 'rb'))


