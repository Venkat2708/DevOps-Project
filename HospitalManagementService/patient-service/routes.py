from flask import (
    Blueprint,
    jsonify,
    request
)

from services import (
    create_patient,
    get_all_patients,
    get_patient,
    update_patient,
    delete_patient
)

patient_bp = Blueprint(
    "patient",
    __name__
)


@patient_bp.route(
    "/patients",
    methods=["POST"]
)
def add_patient():

    try:

        patient = create_patient(
            request.json
        )

        return jsonify(
            patient.to_dict()
        ), 201

    except Exception as e:

        return jsonify({
            "error": str(e)
        }), 500


@patient_bp.route(
    "/patients",
    methods=["GET"]
)
def fetch_patients():

    patients = get_all_patients()

    return jsonify([
        patient.to_dict()
        for patient in patients
    ])


@patient_bp.route(
    "/patients/<int:id>",
    methods=["GET"]
)
def fetch_patient(id):

    patient = get_patient(id)

    if not patient:

        return jsonify({
            "message": "Patient not found"
        }), 404

    return jsonify(
        patient.to_dict()
    )


@patient_bp.route(
    "/patients/<int:id>",
    methods=["PUT"]
)
def modify_patient(id):

    patient = update_patient(
        id,
        request.json
    )

    if not patient:

        return jsonify({
            "message": "Patient not found"
        }), 404

    return jsonify(
        patient.to_dict()
    )


@patient_bp.route(
    "/patients/<int:id>",
    methods=["DELETE"]
)
def remove_patient(id):

    deleted = delete_patient(id)

    if not deleted:

        return jsonify({
            "message": "Patient not found"
        }), 404

    return jsonify({
        "message": "Patient deleted successfully"
    })
