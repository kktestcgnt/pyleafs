import flask

app = flask.Flask(__name__)

@app.route("/")
def home():
    return "<h1>i am in home page<h1>"

app.run(debug=True)
