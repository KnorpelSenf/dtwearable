from flask_jwt_extended import jwt_required, get_raw_jwt

from keymind.resources.security.AbstractUserResource import AbstractUserResource
from keymind.security.blacklist import BLACKLIST


class UserLogoutResource(AbstractUserResource):
    """ Kullanıcının oturum kapatmasını sağlayan sınıf """

    @jwt_required
    def post(self):
        """ Kullanıcının oturum kapatma isteği token'ı üzerine blacklist'e alan metod """

        jti = get_raw_jwt()['jti']
        BLACKLIST.add(jti)
        return {"message": "Successfully logged out"}, 200
