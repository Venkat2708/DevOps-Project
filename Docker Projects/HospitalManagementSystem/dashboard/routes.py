from flask import Blueprint, jsonify

from patient.models import Patient
from doctor.models import Doctor
from appointment.models import Appointment
from billing.models import Bill

dashboard_bp = Blueprint(
    "dashboard",
    __name__,
    url_prefix="/dashboard"
)


@dashboard_bp.route("/stats")
def dashboard_stats():

    patients = Patient.query.count()
    doctors = Doctor.query.count()
    appointments = Appointment.query.count()

    revenue = sum(
        bill.amount
        for bill in Bill.query.all()
    )

    return jsonify({
        "patients": patients,
        "doctors": doctors,
        "appointments": appointments,
        "revenue": revenue
    })
