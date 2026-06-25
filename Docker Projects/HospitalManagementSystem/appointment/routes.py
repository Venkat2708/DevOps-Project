from flask import Blueprint, request, jsonify

from appointment.services import (
    create_appointment,
    get_all_appointments
)

appointment_bp = Blueprint(
    "appointment",
    __name__,
    url_prefix="/appointments"
)


@appointment_bp.route("", methods=["POST"])
def add_appointment():

    appointment = create_appointment(
        request.json
    )

    return jsonify(
        appointment.to_dict()
    ), 201


@appointment_bp.route("", methods=["GET"])
def get_appointments():

    appointments = get_all_appointments()

    return jsonify([
        a.to_dict()
        for a in appointments
    ])
