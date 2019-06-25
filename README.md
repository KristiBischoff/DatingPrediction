# Dating Prediction

Basic front web page link: https://kristibischoff.github.io/DatingPrediction/templates/index

Python: https://kristibischoff.github.io/DatingPrediction/templates/Add_Analysis1

R: https://kristibischoff.github.io/DatingPrediction/templates/Add_Analysis1

## Predict whether you will be a match with someone at a speed dating event.

Dating is mostly over the web anymore, but some people would like to meet "organically." While dating is not transparently the most important thing, many singles search for "the one" for many years. Finding someone to relate with is an important aspect of the human condition, and that is perhaps why the dating app world is so profitable and many people participate. The purpose of this project was to begin with this inspiration to create an interactive match prediction dashboard from a speed dating data set (retrieved from Kaggle.) Additionally, in order to draw clients to use this product, it was advantageous to add suggestion algorithms regardless of the outcome (having a match at the event or not.) The suggestion algorithms will provide next steps to the user of the product. 

## Introduction and Measures

This project uses a speed dating data set that utilizes data collected by multiple participants and whether they were a match or not by the end of the event. Additionally, the data includes information on whether the matches, when applicable, contacted each other after the event. However, for this project a prediction model was developed to predict on the binary variable of having a match or not (yes or no.) While there were many variables to choose from, self-rated/self-perceived ideas of how the participant believes they are perceived by their potential match were the predictor variables used. These are the 5 attribute variables: attractiveness, sincerity, intelligence, "fun", and ambition. Gender and age were also predictors in the logistic regression model. The original data set was obtained and stored in a CSV from Kaggle (https://www.kaggle.com/annavictoria/speed-dating-experiment)

## Data Cleaning 

Data cleaning was performed using python Pandas. 

The data was collapsed in order to remove duplicate data.

Since the data was collected over multiple time points, a weighted average was calculated for each participant and each of the 5 self-rated attributes. Also, mean imputations were used for missing data. 

## Visualizations, modeling, exploratory analysis, and conditional suggestions in the code:
Programming tools used: python Pandas, Matplotlib, sci-kit learn, seaborn, and R. 

The prediction model was stored and flask was used to call in the model and an interactive form for the user (to answer these predictive questions) was rendered to an html template. If the user does get a "yes" for a match at the speed dating event, then they will be redirected to an informational next steps page. If the user receives a "no match" prediction, then depending on their specific characteristics, they will be redirected to a suggestions page tailored for them in order to continue their search. 


