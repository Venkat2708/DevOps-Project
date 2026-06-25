from database.db import db
from appointment.models import Appointment


def create_appointment(data):

    appointment = Appointment(
        patient_id=data["patient_id"],
        doctor_id=data["doctor_id"],
        appointment_date=data["appointment_date"]
    )

    db.session.add(appointment)
    db.session.commit()

    return appointment


def get_all_appointments():

    return Appointment.query.all()
