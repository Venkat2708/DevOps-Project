from flask import Blueprint, request, jsonify

from patient.services import (
    create_patient,
    get_all_patients
)

patient_bp = Blueprint(
    "patient",
    __name__,
    url_prefix="/patients"
)


@patient_bp.route("", methods=["POST"])
def add_patient():

    patient = create_patient(
        request.json
    )

    return jsonify(
        patient.to_dict()
    ), 201


@patient_bp.route("", methods=["GET"])
def get_patients():

    patients = get_all_patients()

    return jsonify([
        p.to_dict()
        for p in patients
    ])
