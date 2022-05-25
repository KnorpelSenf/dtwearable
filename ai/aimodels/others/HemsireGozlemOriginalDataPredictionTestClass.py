import datetime
import logging
from collections import Counter

import pandas as pd

from ai.aimodels.genel.usedmodels.randomizedSearchCVmodels.BidirectionalLongShortTermMemory import \
    BidirectionalLongShortTermMemory
from ai.aimodels.genel.usedmodels.randomizedSearchCVmodels.GatedRecurrentNeuralNetwork import \
    GatedRecurrentNeuralNetwork
from ai.aimodels.genel.usedmodels.randomizedSearchCVmodels.LongShortTermMemory import LongShortTermMemory
from ai.aimodels.genel.usedmodels.randomizedSearchCVmodels.MultilayerPerceptron import MultilayerPerceptron
from ai.aimodels.genel.usedmodels.randomizedSearchCVmodels.RecurrentNeuralNetwork import RecurrentNeuralNetwork
from dt.restful.daos.HemsireGozlemDAO import HemsireGozlemDAO
from dt.restful.daos.SiviAlimiDAO import SiviAlimiDAO
from dt.preprocessing.MultivariateTimeSeriesPreprocessor import MultivariateTimeSeriesPreprocessor
from dt.restful.services.HemsireGozlemService import HemsireGozlemService


class HemsireGozlemOriginalDataPredictionTestClass(BidirectionalLongShortTermMemory):
    """ Genel Tahmin üretin TEST sınıfı..hangi ozellik belli olmadı için, hemşire gozlem veri testlendir. """

    hemsire_gozlem_dao = HemsireGozlemDAO()
    sivi_alimi_dao = SiviAlimiDAO()
    time_interval_in_hours = 12
    window_size = 3

    multivariateTimeSeriesPreprocessor = MultivariateTimeSeriesPreprocessor()
    hemsire_gozlem_service = HemsireGozlemService()

    def get_dataset(self, dataset_parameters):
        """ dataset parametrelerine göre uygun dataseti getiren metod """

        dataset_start_time = dataset_parameters['dataset_start_time']
        dataset_end_time = dataset_parameters['dataset_end_time']
        dataset_window_size = dataset_parameters['window_size']
        dataset_column_names_list = []
        for i in range(dataset_window_size):
            dataset_column_names_list.append('F' + str(i))

        hemsire_gozlem_dto_list = self.hemsire_gozlem_dao. \
            get_temperature_in_date_range(dataset_start_time, dataset_end_time)
        hemsire_gozlem_dto_list.sort(key=lambda x: x.olcum_tarihi)

        for hemsire_gozlem in hemsire_gozlem_dto_list:
            self.hemsire_gozlem_service.create_hemsire_gozlem(hemsire_gozlem)

        return hemsire_gozlem_dto_list  # dataset_final_list

    def get_statistics(self, start_date: datetime, end_date: datetime):
        """ Modelin belirli tarih aralığındaki istatistiklerini getirmek için kullanılan metot
            Bu model için şu aşamada istatistik üretilmediği için boş json dönüyor
        """

        return {}

    def predict(self, islem_no):
        pass
        return
