import flask

app = flask.Flask(__name__)
app.config["Debug"]=True

@app.route("/home")
def home():
    return "<h1>i am in home page<h1>"

if __name__ == "__main__":
    app.run()
