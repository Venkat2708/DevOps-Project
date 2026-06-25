from database.db import db
from patient.models import Patient


def create_patient(data):

    patient = Patient(
        name=data["name"],
        age=data["age"],
        gender=data["gender"],
        phone=data["phone"],
        address=data.get("address", "")
    )

    db.session.add(patient)
    db.session.commit()

    return patient


def get_all_patients():

    return Patient.query.all()
