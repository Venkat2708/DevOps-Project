from flask import Blueprint, request, jsonify

from billing.services import (
    create_bill,
    get_all_bills
)

billing_bp = Blueprint(
    "billing",
    __name__,
    url_prefix="/bills"
)


@billing_bp.route("", methods=["POST"])
def add_bill():

    bill = create_bill(
        request.json
    )

    return jsonify(
        bill.to_dict()
    ), 201


@billing_bp.route("", methods=["GET"])
def get_bills():

    bills = get_all_bills()

    return jsonify([
        b.to_dict()
        for b in bills
    ])
