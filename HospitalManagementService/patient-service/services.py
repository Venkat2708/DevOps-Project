from database import db
from models import Patient


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

    return Patient.query.order_by(
        Patient.id.desc()
    ).all()


def get_patient(patient_id):

    return Patient.query.get(patient_id)


def update_patient(patient_id, data):

    patient = Patient.query.get(patient_id)

    if not patient:
        return None

    patient.name = data.get(
        "name",
        patient.name
    )

    patient.age = data.get(
        "age",
        patient.age
    )

    patient.gender = data.get(
        "gender",
        patient.gender
    )

    patient.phone = data.get(
        "phone",
        patient.phone
    )

    patient.address = data.get(
        "address",
        patient.address
    )

    db.session.commit()

    return patient


def delete_patient(patient_id):

    patient = Patient.query.get(patient_id)

    if not patient:
        return False

    db.session.delete(patient)
    db.session.commit()

    return True
