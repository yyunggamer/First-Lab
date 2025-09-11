from flask import Flask, jsonify
from flask_cors import CORS

app = Flask(__name__)
CORS(app)  # allow React frontend to access API

@app.route("/")
def home():
    return jsonify(message="Hello from Flask backend!")

@app.route("/api/data")
def get_data():
    return jsonify(items=["Apple", "Banana", "Cherry"])

@app.route("/health")
def health():
    return jsonify(status="OK", service="Flask backend")

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8000)
