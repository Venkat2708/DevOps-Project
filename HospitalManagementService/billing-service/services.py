from database import db
from models import Bill


def create_bill(data):

    bill = Bill(
        patient_id=data["patient_id"],
        amount=data["amount"],
        payment_status="Pending"
    )

    db.session.add(bill)
    db.session.commit()

    return bill


def get_all_bills():

    return Bill.query.order_by(
        Bill.id.desc()
    ).all()


def get_bill(bill_id):

    return Bill.query.get(
        bill_id
    )


def update_bill(
        bill_id,
        data
):

    bill = Bill.query.get(
        bill_id
    )

    if not bill:
        return None

    bill.patient_id = data.get(
        "patient_id",
        bill.patient_id
    )

    bill.amount = data.get(
        "amount",
        bill.amount
    )

    bill.payment_status = data.get(
        "payment_status",
        bill.payment_status
    )

    db.session.commit()

    return bill


def mark_as_paid(
        bill_id
):

    bill = Bill.query.get(
        bill_id
    )

    if not bill:
        return False

    bill.payment_status = "Paid"

    db.session.commit()

    return True


def delete_bill(
        bill_id
):

    bill = Bill.query.get(
        bill_id
    )

    if not bill:
        return False

    db.session.delete(
        bill
    )

    db.session.commit()

    return True


def get_total_revenue():

    bills = Bill.query.filter_by(
        payment_status="Paid"
    ).all()

    return sum(
        bill.amount
        for bill in bills
    )
