from flask import Flask
import redis

app = Flask(__name__)
r = redis.Redis(host="redis", port=6379)

@app.route("/")
def home():
    r.incr("hits")
    return f"Hello from DevOps Automation 🚀 | Visits: {r.get('hits').decode()}"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
