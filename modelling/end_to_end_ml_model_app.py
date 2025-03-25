import streamlit as st
import numpy as np
import pandas as pd
import pickle

# load model
model=pickle.load(open("churn_prediction_model.pkl","rb"))
x_train=pd.read_csv("x_train.csv")

def pred(category,item,quantity,price,shopping_mall,city,province_state,country,gender,age,days_since_last_purchase,
          tenure,discount_used,purchase_frequency,avg_purchase_value,recency,purchase_per_tenure,discount_ratio):
    features=np.array([[category,item,quantity,price,shopping_mall,city,province_state,country,gender,age,days_since_last_purchase,
          tenure,discount_used,purchase_frequency,avg_purchase_value,recency,purchase_per_tenure,discount_ratio]])
    prediction= model.predict(features).reshape(1,-1)
    return prediction[0]

st.title("Customer Churn Prediction")

category=st.selectbox("category",x_train["category"])
item=st.selectbox("item",x_train["item"])
quantity=st.selectbox("quantity",x_train["quantity"])
price=st.selectbox("price",x_train["price"])
shopping_mall=st.selectbox("shopping_mall",x_train["shopping_mall"])
city=st.selectbox("city",x_train["city"])
province_state=st.selectbox("province_state",x_train["province_state"])
country=st.selectbox("country",x_train["country"])
gender=st.selectbox("gender",x_train["gender"])
age=st.selectbox("age",x_train["age"])
days_since_last_purchase=st.selectbox("days_since_last_purchase",x_train["days_since_last_purchase"])
tenure=st.selectbox("tenure",x_train["tenure"])
discount_used=st.selectbox("discount_used",x_train["discount_used"])
purchase_frequency=st.selectbox("purchase_frequency",x_train["purchase_frequency"])
avg_purchase_value=st.selectbox("avg_purchase_value",x_train["avg_purchase_value"])
recency=st.selectbox("recency",x_train["recency"])
purchase_per_tenure=st.selectbox("purchase_per_tenure",x_train["purchase_per_tenure"])
discount_ratio=st.selectbox("discount_ratio",x_train["discount_ratio"])

result=pred(category,item,quantity,price,shopping_mall,city,province_state,country,gender,age,days_since_last_purchase,
tenure,discount_used,purchase_frequency,avg_purchase_value,recency,purchase_per_tenure,discount_ratio)

if st.button("predict"):
    st.write(result)