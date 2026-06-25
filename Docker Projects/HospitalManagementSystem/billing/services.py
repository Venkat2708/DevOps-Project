from database.db import db
from billing.models import Bill


def create_bill(data):

    bill = Bill(
        patient_id=data["patient_id"],
        amount=data["amount"]
    )

    db.session.add(bill)
    db.session.commit()

    return bill


def get_all_bills():

    return Bill.query.all()
