from flask import Blueprint

home = Blueprint('home', __name__)

@home.route("/")
def index_home():
    return "Welcome to TechNerds Health Services Website"