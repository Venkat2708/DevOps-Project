from flask import (
    Blueprint,
    request,
    jsonify
)

from services import (
    create_doctor,
    get_all_doctors,
    get_doctor,
    update_doctor,
    delete_doctor
)

doctor_bp = Blueprint(
    "doctor",
    __name__
)


@doctor_bp.route(
    "/doctors",
    methods=["POST"]
)
def add_doctor():

    doctor = create_doctor(
        request.json
    )

    return jsonify(
        doctor.to_dict()
    ), 201


@doctor_bp.route(
    "/doctors",
    methods=["GET"]
)
def fetch_doctors():

    doctors = get_all_doctors()

    return jsonify([
        doctor.to_dict()
        for doctor in doctors
    ])


@doctor_bp.route(
    "/doctors/<int:id>",
    methods=["GET"]
)
def fetch_doctor(id):

    doctor = get_doctor(id)

    if not doctor:
        return jsonify({
            "message": "Doctor not found"
        }), 404

    return jsonify(
        doctor.to_dict()
    )


@doctor_bp.route(
    "/doctors/<int:id>",
    methods=["PUT"]
)
def modify_doctor(id):

    doctor = update_doctor(
        id,
        request.json
    )

    if not doctor:
        return jsonify({
            "message": "Doctor not found"
        }), 404

    return jsonify(
        doctor.to_dict()
    )


@doctor_bp.route(
    "/doctors/<int:id>",
    methods=["DELETE"]
)
def remove_doctor(id):

    deleted = delete_doctor(id)

    if not deleted:
        return jsonify({
            "message": "Doctor not found"
        }), 404

    return jsonify({
        "message": "Doctor deleted successfully"
    })
