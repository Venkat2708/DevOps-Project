import jwt
import datetime

SECRET = "hospital-secret"


def generate_token(username):

    payload = {
        "user": username,
        "exp":
        datetime.datetime.utcnow()
        + datetime.timedelta(hours=8)
    }

    return jwt.encode(
        payload,
        SECRET,
        algorithm="HS256"
    )
