import os


class Config:

    DATABASE_URL = os.getenv(
        "DATABASE_URL",
        "postgresql://admin:admin123@postgres:5432/hospitaldb"
    )

    REDIS_HOST = os.getenv(
        "REDIS_HOST",
        "redis"
    )

    REDIS_PORT = int(
        os.getenv(
            "REDIS_PORT",
            6379
        )
    )
