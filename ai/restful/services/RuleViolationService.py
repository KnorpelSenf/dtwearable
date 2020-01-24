from datetime import datetime

from flask_socketio import emit

from ai.enums.PriorityEnum import PriorityEnum
from ai.restful.daos.NotificationDAO import NotificationDAO
from ai.restful.daos.RuleViolationDAO import RuleViolationDAO
from ai.restful.models.NotificationDTO import NotificationDTO
from ai.restful.models.RuleViolationDTO import RuleViolationDTO
from kvc.ruleengines.RuleViolationException import RuleViolationException


class RuleViolationService():
    """ Kural motorundan çıkan kural ihlallerinin veri tabanına kaydının yapıldığı sınıf """

    rule_violation_dao = RuleViolationDAO()
    notification_dao = NotificationDAO()

    def save_rule_violations(self, rule_violation_list):
        """ Kural motorundan çıkan sonuçların, ihlal olması durumunda veri tabanına kaydını sağlayan metot """

        for rule_violation_exception in rule_violation_list:
            try:
                self.save_rule_violation(rule_violation_exception)

            except Exception as e:
                print(e)

    def save_rule_violation(self, rule_violation_exception: RuleViolationException):
        self.save_rule_violation_to_db(rule_violation_exception.reference_table,
                                       rule_violation_exception.reference_id,
                                       rule_violation_exception.prediction_id,
                                       rule_violation_exception.rule_enum.name,
                                       rule_violation_exception.message,
                                       rule_violation_exception.value,
                                       datetime.now())

    def save_rule_violation_to_db(self, reference_table, reference_id, prediction_id, rule, value_source, value,
                                  violation_date):
        """ Kural motorundan çıkan sonuçların, ihlal olması durumunda veri tabanına kaydını sağlayan metot """
        rule_violation_dto = RuleViolationDTO(id=None,
                                              reference_table=reference_table,
                                              reference_id=reference_id,
                                              prediction_id=prediction_id,
                                              rule=rule,
                                              value_source=value_source,
                                              value=value,
                                              violation_date=violation_date)

        self.save_notfication_to_db(rule_violation_id=rule_violation_dto.id, staff_id=None,
                                    priority=PriorityEnum.HIGH, message=rule_violation_dto.value_source,
                                    notification_date=datetime.now(), error_message=rule_violation_dto.value_source)

        try:
            self.rule_violation_dao.save_to_db(rule_violation_dto)

            return rule_violation_dto
        except Exception as e:
            print(e)
            raise Exception("Error occurred while inserting.")

    def save_notfication_to_db(self, rule_violation_id, staff_id, priority, message, notification_date, error_message):
        """ Kural motorundan çıkan sonuçların, ihlal olması durumunda veri tabanına kaydını sağlayan metot """

        notification_dto = NotificationDTO(id=None,
                                           rule_violation_id=rule_violation_id,
                                           staff_id=staff_id,
                                           priority=priority,
                                           message=message,
                                           notification_date=notification_date,
                                           error_message=error_message)
        try:
            self.notification_dao.save_to_db(notification_dto)
            # emit('message', notification_dto.serialize, broadcast=True, namespace='/')
            self.send_notification(notification_dto.serialize)
            return notification_dto
        except Exception as e:
            print(e)
            raise Exception("Error occurred while inserting.")

    def send_notification(self, notification_message):
        emit('message', notification_message, broadcast=True, namespace='/')