import os

from flask import Flask
from flask_cors import CORS

from database import db

app = Flask(__name__)

DATABASE_URL = os.getenv(
    "DATABASE_URL",
    "postgresql://admin:admin123@postgres:5432/hospitaldb"
)

app.config[
    "SQLALCHEMY_DATABASE_URI"
] = DATABASE_URL

app.config[
    "SQLALCHEMY_TRACK_MODIFICATIONS"
] = False

db.init_app(app)

CORS(app)

from models import Appointment
from routes import appointment_bp

app.register_blueprint(
    appointment_bp
)

with app.app_context():
    db.create_all()


@app.route("/")
def health():

    return {
        "service":
        "appointment-service",
        "status":
        "running"
    }


if __name__ == "__main__":

    app.run(
        host="0.0.0.0",
        port=5003,
        debug=True
    )
