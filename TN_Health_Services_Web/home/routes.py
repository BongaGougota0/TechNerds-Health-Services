from flask import Blueprint, render_template

home = Blueprint('home', __name__)

@home.route("/")
def index_home():
    return render_template("index.html")