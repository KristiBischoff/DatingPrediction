# Dating Prediction

Basic front web page link: https://kristibischoff.github.io/DatingPrediction/templates/index
Python: https://kristibischoff.github.io/DatingPrediction/templates/Add_Analysis1
R: https://kristibischoff.github.io/DatingPrediction/templates/Add_Analysis1

## Predict whether you will be a match with someone at a speed dating event.

## Introduction and Measures

This project uses a speed dating data set that utilizes data collected by multiple participants and whether they were a match or not by the end of the event. Additionally, the data includes information on whether the matches, when applicable, contacted each other after the event. However, for this project a prediction model was developed to predict on the binary variable of having a match or not (yes or no.) While there were many variables to choose from, self-rated/self-perceived ideas of how the participant believes they are perceived by their potential match were the predictor variables used. These are the 5 attribute variables: attractiveness, sincerity, intelligence, "fun", and ambition. Gender and age were also predictors in the logistic regression model. The original data set was obtained and stored in a CSV from Kaggle (https://www.kaggle.com/annavictoria/speed-dating-experiment)

## Data Cleaning 

Data cleaning was performed using python Pandas. 

The data was collapsed in order to remove duplicate data.

Since the data was collected over multiple time points, a weighted average was calculated for each participant and each of the 5 self-rated attributes. Also, mean imputations were used for missing data. 

## Next steps

Visualizations, modeling, exploratory analysis:
Programming tools used: python Pandas, Matplotlib, sci-kit learn, seaborn, and R. 


