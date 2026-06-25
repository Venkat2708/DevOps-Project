import redis
import json

redis_client = redis.Redis(
    host="redis",
    port=6379,
    decode_responses=True
)


def get_cache(key):

    value = redis_client.get(key)

    if value:
        return json.loads(value)

    return None


def set_cache(
        key,
        value,
        ttl=60
):

    redis_client.setex(
        key,
        ttl,
        json.dumps(value)
    )
