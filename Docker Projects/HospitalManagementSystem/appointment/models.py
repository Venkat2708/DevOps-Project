from database.db import db


class Appointment(db.Model):

    __tablename__ = "appointments"

    id = db.Column(
        db.Integer,
        primary_key=True
    )

    patient_id = db.Column(
        db.Integer,
        nullable=False
    )

    doctor_id = db.Column(
        db.Integer,
        nullable=False
    )

    appointment_date = db.Column(
        db.String(50),
        nullable=False
    )

    status = db.Column(
        db.String(20),
        default="Scheduled"
    )

    created_at = db.Column(
        db.DateTime,
        server_default=db.func.now()
    )

    def to_dict(self):

        return {
            "id": self.id,
            "patient_id": self.patient_id,
            "doctor_id": self.doctor_id,
            "appointment_date": self.appointment_date,
            "status": self.status
        }
