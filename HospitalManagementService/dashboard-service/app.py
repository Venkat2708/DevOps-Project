from flask import Flask
from flask_cors import CORS

app = Flask(__name__)

CORS(app)

from routes import dashboard_bp

app.register_blueprint(
    dashboard_bp
)


@app.route("/")
def health():

    return {
        "service":
        "dashboard-service",
        "status":
        "running"
    }


if __name__ == "__main__":

    app.run(
        host="0.0.0.0",
        port=5005,
        debug=True
    )
