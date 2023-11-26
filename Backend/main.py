
from flask import Flask, redirect,url_for, render_template, Blueprint,request, session,flash
from sqlalchemy import true
import os
from werkzeug.utils import secure_filename
from db.db import mysql
from model.app import web
from flask_cors import CORS
app=Flask(__name__)
CORS(app, resources={r"/*": {"origins": "*"}})
app.config["SECRET_KEY"] = "iot"
app.config["MYSQL_DATABASE_HOST"]='localhost'
app.config["MYSQL_DATABASE_USER"]="root"
app.config["MYSQL_DATABASE_PASSWORD"]="Cuonglc123"
app.config["MYSQL_DATABASE_DB"]='IoT'
mysql.init_app(app)

app.register_blueprint(web)

if __name__=="__main__":
    app.run(host='0.0.0.0')