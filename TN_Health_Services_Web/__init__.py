from flask import Flask

app = Flask(__name__)

from TN_Health_Services_Web.home.routes import home
app.register_blueprint(home)

def create_app():
    return app