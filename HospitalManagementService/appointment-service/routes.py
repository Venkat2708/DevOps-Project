from flask import (
    Blueprint,
    request,
    jsonify
)

from services import (
    create_appointment,
    get_all_appointments,
    get_appointment,
    update_appointment,
    cancel_appointment,
    delete_appointment
)

appointment_bp = Blueprint(
    "appointment",
    __name__
)


@appointment_bp.route(
    "/appointments",
    methods=["POST"]
)
def add_appointment():

    appointment = create_appointment(
        request.json
    )

    return jsonify(
        appointment.to_dict()
    ), 201


@appointment_bp.route(
    "/appointments",
    methods=["GET"]
)
def fetch_appointments():

    appointments = get_all_appointments()

    return jsonify([
        appointment.to_dict()
        for appointment in appointments
    ])


@appointment_bp.route(
    "/appointments/<int:id>",
    methods=["GET"]
)
def fetch_appointment(id):

    appointment = get_appointment(id)

    if not appointment:

        return jsonify({
            "message":
            "Appointment not found"
        }), 404

    return jsonify(
        appointment.to_dict()
    )


@appointment_bp.route(
    "/appointments/<int:id>",
    methods=["PUT"]
)
def modify_appointment(id):

    appointment = update_appointment(
        id,
        request.json
    )

    if not appointment:

        return jsonify({
            "message":
            "Appointment not found"
        }), 404

    return jsonify(
        appointment.to_dict()
    )


@appointment_bp.route(
    "/appointments/<int:id>/cancel",
    methods=["PUT"]
)
def cancel(id):

    result = cancel_appointment(id)

    if not result:

        return jsonify({
            "message":
            "Appointment not found"
        }), 404

    return jsonify({
        "message":
        "Appointment cancelled"
    })


@appointment_bp.route(
    "/appointments/<int:id>",
    methods=["DELETE"]
)
def remove_appointment(id):

    deleted = delete_appointment(id)

    if not deleted:

        return jsonify({
            "message":
            "Appointment not found"
        }), 404

    return jsonify({
        "message":
        "Appointment deleted"
    })
