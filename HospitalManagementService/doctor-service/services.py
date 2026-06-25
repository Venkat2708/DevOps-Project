from database import db
from models import Doctor


def create_doctor(data):

    doctor = Doctor(
        name=data["name"],
        specialization=data["specialization"],
        experience=data.get("experience", 0),
        phone=data.get("phone", "")
    )

    db.session.add(doctor)
    db.session.commit()

    return doctor


def get_all_doctors():

    return Doctor.query.order_by(
        Doctor.id.desc()
    ).all()


def get_doctor(doctor_id):

    return Doctor.query.get(doctor_id)


def update_doctor(doctor_id, data):

    doctor = Doctor.query.get(doctor_id)

    if not doctor:
        return None

    doctor.name = data.get(
        "name",
        doctor.name
    )

    doctor.specialization = data.get(
        "specialization",
        doctor.specialization
    )

    doctor.experience = data.get(
        "experience",
        doctor.experience
    )

    doctor.phone = data.get(
        "phone",
        doctor.phone
    )

    db.session.commit()

    return doctor


def delete_doctor(doctor_id):

    doctor = Doctor.query.get(doctor_id)

    if not doctor:
        return False

    db.session.delete(doctor)
    db.session.commit()

    return True
