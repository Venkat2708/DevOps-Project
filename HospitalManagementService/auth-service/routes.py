from flask import (
    Blueprint,
    request,
    jsonify
)

from services import (
    generate_token
)

auth_bp = Blueprint(
    "auth",
    __name__
)


@auth_bp.route(
    "/login",
    methods=["POST"]
)
def login():

    username = request.json["username"]
    password = request.json["password"]

    if (
        username == "admin"
        and
        password == "admin"
    ):

        token = generate_token(
            username
        )

        return jsonify({
            "token": token
        })

    return jsonify({
        "message":
        "Invalid credentials"
    }), 401
