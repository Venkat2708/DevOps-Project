import os

from flask import Flask
from flask_cors import CORS

from database import db

app = Flask(__name__)

DATABASE_URL = os.getenv(
    "DATABASE_URL",
    "postgresql://admin:admin123@localhost:5432/hospitaldb"
)

app.config[
    "SQLALCHEMY_DATABASE_URI"
] = DATABASE_URL

app.config[
    "SQLALCHEMY_TRACK_MODIFICATIONS"
] = False

db.init_app(app)

CORS(app)

from routes import patient_bp
from models import Patient

app.register_blueprint(
    patient_bp
)

with app.app_context():
    db.create_all()


@app.route("/")
def health():

    return {
        "service": "patient-service",
        "status": "running"
    }


if __name__ == "__main__":

    app.run(
        host="0.0.0.0",
        port=5001,
        debug=True
    )
