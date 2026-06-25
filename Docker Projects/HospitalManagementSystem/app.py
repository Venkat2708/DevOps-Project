from flask import Flask
from flask_cors import CORS

from config import Config
from database.db import db

app = Flask(__name__)
app.config.from_object(Config)

CORS(app)

db.init_app(app)

# Register blueprints
from patient.routes import patient_bp
from doctor.routes import doctor_bp
from appointment.routes import appointment_bp
from billing.routes import billing_bp
from dashboard.routes import dashboard_bp

app.register_blueprint(patient_bp)
app.register_blueprint(doctor_bp)
app.register_blueprint(appointment_bp)
app.register_blueprint(billing_bp)
app.register_blueprint(dashboard_bp)

# Import models
from patient.models import Patient
from doctor.models import Doctor
from appointment.models import Appointment
from billing.models import Bill

with app.app_context():
    db.create_all()

@app.route("/")
def health():
    return {
        "status": "running",
        "application": "Hospital Management System"
    }

if __name__ == "__main__":
    app.run(
        host="0.0.0.0",
        port=5000,
        debug=True
    )
