from flask import Blueprint, request, jsonify

from doctor.services import (
    create_doctor,
    get_all_doctors
)

doctor_bp = Blueprint(
    "doctor",
    __name__,
    url_prefix="/doctors"
)


@doctor_bp.route("", methods=["POST"])
def add_doctor():

    doctor = create_doctor(
        request.json
    )

    return jsonify(
        doctor.to_dict()
    ), 201


@doctor_bp.route("", methods=["GET"])
def get_doctors():

    doctors = get_all_doctors()

    return jsonify([
        d.to_dict()
        for d in doctors
    ])
