from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Hello from ECS FARGATE with ALB using Github Actions"

@app.route("/health")
def health():
    return "the container is healthy", 200   # Simple text response

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)

