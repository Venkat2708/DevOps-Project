from database import db
from models import Appointment


def create_appointment(data):

    appointment = Appointment(
        patient_id=data["patient_id"],
        doctor_id=data["doctor_id"],
        appointment_date=data["appointment_date"],
        status="Scheduled"
    )

    db.session.add(appointment)
    db.session.commit()

    return appointment


def get_all_appointments():

    return Appointment.query.order_by(
        Appointment.id.desc()
    ).all()


def get_appointment(appointment_id):

    return Appointment.query.get(
        appointment_id
    )


def update_appointment(
        appointment_id,
        data
):

    appointment = Appointment.query.get(
        appointment_id
    )

    if not appointment:
        return None

    appointment.patient_id = data.get(
        "patient_id",
        appointment.patient_id
    )

    appointment.doctor_id = data.get(
        "doctor_id",
        appointment.doctor_id
    )

    appointment.appointment_date = data.get(
        "appointment_date",
        appointment.appointment_date
    )

    appointment.status = data.get(
        "status",
        appointment.status
    )

    db.session.commit()

    return appointment


def cancel_appointment(
        appointment_id
):

    appointment = Appointment.query.get(
        appointment_id
    )

    if not appointment:
        return False

    appointment.status = "Cancelled"

    db.session.commit()

    return True


def delete_appointment(
        appointment_id
):

    appointment = Appointment.query.get(
        appointment_id
    )

    if not appointment:
        return False

    db.session.delete(
        appointment
    )

    db.session.commit()

    return True
