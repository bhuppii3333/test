from flask import Flask
import socket
hostname = socket.gethostname()
IPAddr = socket.gethostbyname(hostname)
app = Flask(__name__)
@app.route("/")
def hello():
    return "Hello World!"
if __name__ == "__main__":
    app.run(host=IPAddr, port=int("5000"), debug=True)
