import os

class Config:

    SQLALCHEMY_DATABASE_URI = os.getenv(
        "DATABASE_URL",
        "postgresql://admin:admin123@postgres:5432/hospitaldb"
    )

    SQLALCHEMY_TRACK_MODIFICATIONS = False

    REDIS_HOST = os.getenv("REDIS_HOST", "redis")
    REDIS_PORT = int(os.getenv("REDIS_PORT", 6379))

    SECRET_KEY = os.getenv(
        "SECRET_KEY",
        "hospital-secret-key"
    )
