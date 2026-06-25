from flask import (
    Blueprint,
    jsonify,
    request
)

from services import (
    create_bill,
    get_all_bills,
    get_bill,
    update_bill,
    mark_as_paid,
    delete_bill,
    get_total_revenue
)

billing_bp = Blueprint(
    "billing",
    __name__
)


@billing_bp.route(
    "/bills",
    methods=["POST"]
)
def add_bill():

    bill = create_bill(
        request.json
    )

    return jsonify(
        bill.to_dict()
    ), 201


@billing_bp.route(
    "/bills",
    methods=["GET"]
)
def fetch_bills():

    bills = get_all_bills()

    return jsonify([
        bill.to_dict()
        for bill in bills
    ])


@billing_bp.route(
    "/bills/<int:id>",
    methods=["GET"]
)
def fetch_bill(id):

    bill = get_bill(id)

    if not bill:
        return jsonify({
            "message":
            "Bill not found"
        }), 404

    return jsonify(
        bill.to_dict()
    )


@billing_bp.route(
    "/bills/<int:id>",
    methods=["PUT"]
)
def modify_bill(id):

    bill = update_bill(
        id,
        request.json
    )

    if not bill:
        return jsonify({
            "message":
            "Bill not found"
        }), 404

    return jsonify(
        bill.to_dict()
    )


@billing_bp.route(
    "/bills/<int:id>/pay",
    methods=["PUT"]
)
def pay_bill(id):

    result = mark_as_paid(id)

    if not result:
        return jsonify({
            "message":
            "Bill not found"
        }), 404

    return jsonify({
        "message":
        "Bill paid successfully"
    })


@billing_bp.route(
    "/bills/<int:id>",
    methods=["DELETE"]
)
def remove_bill(id):

    deleted = delete_bill(id)

    if not deleted:
        return jsonify({
            "message":
            "Bill not found"
        }), 404

    return jsonify({
        "message":
        "Bill deleted successfully"
    })


@billing_bp.route(
    "/billing/revenue",
    methods=["GET"]
)
def revenue():

    return jsonify({
        "total_revenue":
        get_total_revenue()
    })
