import requests


PATIENT_SERVICE = "http://patient-service:5001"
DOCTOR_SERVICE = "http://doctor-service:5002"
APPOINTMENT_SERVICE = "http://appointment-service:5003"
BILLING_SERVICE = "http://billing-service:5004"


def get_dashboard_stats():

    try:

        patients = requests.get(
            f"{PATIENT_SERVICE}/patients"
        ).json()

    except:
        patients = []

    try:

        doctors = requests.get(
            f"{DOCTOR_SERVICE}/doctors"
        ).json()

    except:
        doctors = []

    try:

        appointments = requests.get(
            f"{APPOINTMENT_SERVICE}/appointments"
        ).json()

    except:
        appointments = []

    try:

        bills = requests.get(
            f"{BILLING_SERVICE}/bills"
        ).json()

    except:
        bills = []

    total_revenue = sum(
        bill["amount"]
        for bill in bills
        if bill["payment_status"] == "Paid"
    )

    pending_bills = len([
        bill
        for bill in bills
        if bill["payment_status"] == "Pending"
    ])

    completed_appointments = len([
        appointment
        for appointment in appointments
        if appointment["status"] == "Completed"
    ])

    return {

        "total_patients":
            len(patients),

        "total_doctors":
            len(doctors),

        "total_appointments":
            len(appointments),

        "completed_appointments":
            completed_appointments,

        "total_bills":
            len(bills),

        "pending_bills":
            pending_bills,

        "total_revenue":
            total_revenue
    }
