from flask import Flask, render_template, request
import pandas as pd
import numpy as np
import pickle
from sklearn.preprocessing import LabelEncoder

app = Flask(__name__)


@app.route('/')
def index():
    return render_template("index.html")

@app.route('/predict', methods=['GET'])
def predict():
    # assign API variables to an object
    arguments = request.args.to_dict()
    # create a variable for each parameter in the API request
    Age = float(arguments['age'])
    Gender = float(arguments['gender_1'])
    Race_match = int(arguments['samerace_1'])
    Attract = float(arguments['attr_3'])
    Sincere = float(arguments['sinc_3'])
    Intelligent = float(arguments['intel_3'])
    Fun = float(arguments['fun_3'])
    Ambition = float(arguments['amb_3'])

    # setup or X variable as a list of all the API values from above
    X = np.asarray([Age, Gender, Race_match, Attract, Sincere, Intelligent, Fun, Ambition])

    # # load model that we created
    filename = ('./model/predictor_model')
    model = pickle.load(open(filename, 'rb'))

    prediction = model.predict(X.reshape(1,-1))
    if (prediction == 0 and Gender == 0): 
        prediction = "No Matches at This Event"
        return render_template("Resultfemno.html", Result=prediction )

    if (prediction == 0 and Gender == 1):
        prediction = "No Matches at This Event"
        return render_template("Resultmalno.html", Result=prediction ) 
    
    if prediction == 1:
        prediction = "Your Match is Waiting for You"
        return render_template("Result.html", Result=prediction )


@app.route("/Python")
def Python():
    return render_template("Add_Analysis1.html")

@app.route("/R")
def R():
    return render_template("Add_Analysis2.html")

@app.route("/Futures")
def Futures():
    return render_template("Future.html")

@app.route("/Cont")
def Cont():
    return render_template("Contact.html")       

if __name__ == '__main__':
    app.run()