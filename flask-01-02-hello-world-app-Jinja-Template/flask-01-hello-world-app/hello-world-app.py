# Hello World App

from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello():
    return "<h1>Hello World</h1>"

@app.route("/second")
def second():
    return "<h2>This is the second page</h2>"

@app.route("/forth/<string:id>")

def forth(id):
    
    if id.isdigit():
        return f"The Id of this page is {id}"
    else:
        return f"The ID is not valid"

app.run(debug=False)

