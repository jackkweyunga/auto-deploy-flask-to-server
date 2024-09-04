from flask import Flask
from datetime import datetime as dt
import os

app = Flask(__name__)

@app.route("/")
def heartbeat():
    return {
        "now": dt.utcnow()
    }

if __name__ == "__main__":
    # Get the DEBUG environment variable, defaulting to True if not set.
    debug = os.environ.get("DEBUG", "True").lower() in ("true", "1")
    
    app.run(debug=debug)