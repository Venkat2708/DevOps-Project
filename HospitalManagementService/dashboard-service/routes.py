from flask import (
    Blueprint,
    jsonify
)

from services import (
    get_dashboard_stats
)

dashboard_bp = Blueprint(
    "dashboard",
    __name__
)


@dashboard_bp.route(
    "/dashboard/stats",
    methods=["GET"]
)
def dashboard_stats():

    data = get_dashboard_stats()

    return jsonify(data)
