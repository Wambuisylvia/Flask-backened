# import flask

from flask import *

# initialize our app

app=Flask(__name__)

# creating routes

@app.route("/api/home")

def home():
    return ({"message":"welcome to home Api"})

# api for products

@app.route("/api/products")
def products():
    return jsonify ({"message":"welcome to products api"})

# endpoint to calculate two numbers

@app.route("/api/calc",methods=["POST"])
def calc():
    num1=request.form["num1"]
    num2=request.form["num2"]
    sum=int(num1)+int(num2)
    return jsonify({"The sum is":sum})


@app.route("/api/simpleinterest",methods=["POST"])
def simple_interest():
     principle=request.form["principle"]
     rate=request.form["rate"]
     time=request.form["time"]
     simple_interest=int(principle)*int(rate)*int(time)/100
     return jsonify ({"The simple interest is":simple_interest})





























# running the app

app.run(debug=True)
