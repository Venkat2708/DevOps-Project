from database.db import db
from doctor.models import Doctor


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

    return Doctor.query.all()
