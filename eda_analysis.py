import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
# Load the dataset
data = pd.read_csv('swiggy_delivery_profitability_dataset.csv')
'''print(data.head())
print(data.info())
print(data.describe())
#Delivery Time vs Rating.
bins = [0,20,30,40,50,60,100]

labels = ["0-20","20-30","30-40","40-50","50-60","60+"]

data["Time_Bucket"] = pd.cut(
    data["Delivery_Time_min"],
    bins=bins,
    labels=labels
)
avg_rating = data.groupby("Time_Bucket")["Rating"].mean()

print(avg_rating)
avg_rating.plot(kind="bar")

plt.xlabel("Delivery Time Range")
plt.ylabel("Average Rating")
plt.title("Average Customer Rating by Delivery Time")

plt.grid(True)

plt.show()

#dicount  percentage vs profitability
plt.scatter(data["Discount_Percentage"], data["Profit"])

plt.xlabel("Discount Percentage")
plt.ylabel("Profit")

plt.title("Discount Percentage vs Profit")

plt.grid(True)

plt.show()
#Which cities have higher delivery times?

city_delivery = data.groupby("City")["Delivery_Time_min"].mean()

print(city_delivery)
city_delivery.plot(kind="bar")

plt.xlabel("City")
plt.ylabel("Average Delivery Time")

plt.title("City vs Average Delivery Time")

plt.grid(True)

plt.show()

#order cancelled vs repeat customers
cancel_repeat = pd.crosstab(
    data["Order_Cancelled"],
    data["Repeat_Customer"]
)

print(cancel_repeat)
cancel_repeat.plot(kind="bar")

plt.xlabel("Order Cancelled")
plt.ylabel("Number of Customers")

plt.title("Cancelled Orders vs Repeat Customers")

plt.grid(True)

plt.show()
#Refund vs Repeat Customer
refund_repeat = pd.crosstab(
    data["Refund"],
    data["Repeat_Customer"]
)

print(refund_repeat)
refund_repeat.plot(kind="bar")

plt.xlabel("Refund Status")
plt.ylabel("Number of Customers")

plt.title("Refund vs Repeat Customer")

plt.grid(True)

plt.show()'''

#Which factors influence profit most?


numeric_columns = [
    "Order_Value",
    "Discount_Percentage",
    "Delivery_Distance_km",
    "Delivery_Time_min",
    "Delivery_Cost",
    "Profit",
    "Rating"
]

correlation = data[numeric_columns].corr()

sns.heatmap(
    correlation,
    annot=True,
    cmap="coolwarm"
)

plt.title("Correlation Heatmap")

plt.show()