# Analysis of Orders received by a Restaurant Using SQL
# Introduction
At the start of the year, Freshy Foods launched a freshly curated menu aimed at offering a unique dining experience. To better understand customer preferences, spending habits, and overall menu performance, this project focuses on analyzing the restaurant’s order data using SQL.
## Skills Demonstrated
- Data cleaning and type conversion  
- Filtering and conditional querying  
- Aggregation using (`SUM()`, `COUNT()`, `AVG()`)  
- Table joins (`JOIN`, `LEFT JOIN`)
- Filtering records (`WHERE`, `HAVING`)  
- Grouping and sorting results (`GROUP BY`, `ORDER BY`)  
- Using subqueries for complex queries  
- Interpreting query results to extract business insights
# Data Sourcing
Data was sourced from Mavin Analytics
# RDBMS used: POSTGRE SQL
# Key Questions
I answered the following quentions from the dataset:
- How many items are on the menu?
- What are the least and most expensive items on the menu?
- How many Italian dishes are on the menu?
- What are the least and most expensive Italian dishes on the menu?
- How many dishes are in each category?
- What is the average dish price within each category?
- What is the date range of the orders table?
- How many orders and items were ordered within this date range?
- Which orders had the most number of items?
- How many orders had more than 12 items?
- What are the least and most ordered items? What category are they in?
- What were the top 5 orders that spent the most money?
- View the details of the highest spend order. Which specific items were purchased? and what insights can you draw?
- View the details of the top 5 highest spend orders, What insights can be drawn?
# Data Preparation
This process involves cleaning, transforming, and enriching the data to prepare it for analysis. After downloading the raw Excel file, it was converted to a CSV (comma-delimited) format. Duplicates were removed, and column data types were adjusted to align with the data types defined in the PostgreSQL relational database schema, ensuring seamless data loading and minimizing errors. Additionally, date formats were standardized to match the expected database format for consistency and accuracy.
# Data Loading
The second step in the data preparation process involved transferring data from the original source, Excel into the PostgreSQL database. I created two separate tables, order_details and menu_items, and successfully imported the cleaned CSV files into each table making use of the query shown in the image below.

![image](https://github.com/user-attachments/assets/c6b99a31-184a-45bf-b27f-e28c42b7f234)
# Analysis and Findings
## How many items are on the menu?
The menu features a total of **32** distinct items, showcasing a diverse range of offerings available to customers.

![image](https://github.com/user-attachments/assets/4dc66b20-bf27-49ee-87a4-3618c25ef529)
![image](https://github.com/user-attachments/assets/b9b23ae6-cc54-4705-af53-72f53e6e1f45)
## What are the least and most expensive items on the menu?
The data reveals that Edamame is the least expensive item on the menu, priced at **$5.00**, while Shrimp Scampi stands as the most expensive, at **$19.95**

![image](https://github.com/user-attachments/assets/e5866d52-defb-45b7-b7b1-592ccb03146e)
![image](https://github.com/user-attachments/assets/69904121-2cb8-4540-b157-c72999a48f7c)
##  How many Italian dishes are on the menu?
There are **9** Italian dishes on the menu which indicates that the restaurant has a soft spot for pasta, cheese, and everything saucy. Italy's influence is definitely alive and well on these plates.

![image](https://github.com/user-attachments/assets/c4edccdd-58bb-461c-8b59-e1487e229ad8)
![image](https://github.com/user-attachments/assets/d1594be7-ff61-4048-904b-3b688e90d318)
## What are the least and most expensive Italian dishes on the menu?
The data reveals that among the Italian dishes on the menu, Spaghetti is the least expensive at **$14.50**, while Shrimp Scampi stands out as the most expensive, priced at **$19.95**.

![image](https://github.com/user-attachments/assets/d66e9f95-f4b8-4647-975d-29ab724c6401)
![image](https://github.com/user-attachments/assets/97eb9ac4-13ec-4f32-80f1-b90eefb00458)
## How many dishes are in each category?
The menu is thoughtfully diverse, featuring **6 American**, **9 Mexican**, **8 Asian**, and **9 Italian** dishes. This balanced distribution highlights the restaurant’s aim to cater to a variety of culinary preferences.

![image](https://github.com/user-attachments/assets/7cfe30b0-90dd-4590-8a05-5ac6a35602e7)
![image](https://github.com/user-attachments/assets/956435be-aa9c-4cff-b956-4de88b79fa3d)
## What is the average dish price within each category?
The average dish price varies across categories, reflecting differences in ingredients and preparation. Italian dishes are the most premium, averaging **$16.75**, followed by Asian at **$13.48**, Mexican at **$11.80**, and American dishes being the most affordable at **$10.07**.

![image](https://github.com/user-attachments/assets/c6867770-67d5-48fa-8d17-f17e38d555e2)
![image](https://github.com/user-attachments/assets/ae49d5a3-7714-4da4-b583-ffff61be3570)
## What is the date range of the orders table?
The orders table spans a date range from January 1st to March 31st, 2023, capturing customer activity during the first quarter of the year.

![image](https://github.com/user-attachments/assets/63f26e6a-57dc-4cdb-80ff-4cae17eb8af6)
![image](https://github.com/user-attachments/assets/303b2e69-6f13-4b1b-b203-d7e9d7a2a3a8)
## How many orders and items were ordered within this date range?
Within the specified date range, a total of **5,370** orders were placed, comprising **12,234** individual items. This provides a snapshot of customer activity and menu engagement during the period.

![image](https://github.com/user-attachments/assets/160cfe7f-e09c-46c8-95bc-67e26cb00e69)
![image](https://github.com/user-attachments/assets/0f60bd05-55bf-478b-bebd-19e915efee5f)
## Which orders had the most number of items?
The data shows that certain orders stood out for their volume, with the highest number of items recorded in orders. These high-item orders provide valuable insight into customer behavior and peak demand scenarios.

![image](https://github.com/user-attachments/assets/d0691771-7ccd-4f8c-9172-50ebcf64fbc2)
![image](https://github.com/user-attachments/assets/e5ab47a1-0dbd-4159-ac97-04f5974bb29c)
## How many orders had more than 12 items?
A total of 23 orders contained more than 12 items, indicating a few high-volume purchases likely made for groups or special occasions.

![image](https://github.com/user-attachments/assets/71b384cd-e880-48cc-9d2e-41eb420fd673)
![image](https://github.com/user-attachments/assets/11b8b119-5b5c-4590-8754-65f9c0d43585)
## What are the least ordered and most ordered items? What category are they in?
The least ordered item is **Chicken Tacos** from the **Mexican** category, while the most ordered item is **Hamburger** from the **American** category. This highlights a strong customer preference for savory mains over beverages.

![image](https://github.com/user-attachments/assets/27224f2a-ee83-4dba-bbc5-0b32d3d2bf4b)
![image](https://github.com/user-attachments/assets/7fd0295d-913b-40e4-bf79-4c2d4b1f5f9b)
## What were the top 5 orders that spent the most money?
The top five highest-spending orders reflect customers who indulged the most. These orders had the highest total amounts spent, showcasing a preference for premium selections or larger group orders.

![image](https://github.com/user-attachments/assets/fee2dd11-c962-4198-9aa1-9982904c7bcd)
![image](https://github.com/user-attachments/assets/b46e6da0-337d-4890-a2e7-3321207569fe)
## View the details of the highest spend order. Which specific items were purchased? and what insights can you draw?
The highest-spend order included a variety of premium items, contributing to a substantial total. Notably, the order featured American (2), Asian (2), Italian (8), and Mexican (2) dishes, indicating a strong preference for upscale selections. The prominence of Italian dishes, accounting for the highest number of items, highlights customers’ willingness to spend more when presented with diverse, high-quality options. This underscores the importance of maintaining premium offerings, particularly within the Italian category to drive revenue and meet customer expectations.

![image](https://github.com/user-attachments/assets/c31e56a5-c90a-47fb-9141-69fddee75cdc)
![image](https://github.com/user-attachments/assets/4aa715a8-7196-48cc-9d91-7080b30aed27)

A further analysis provided a detailed breakdown of the highest spend order, highlighting the specific items purchased, their respective quantities, and individual prices. This offers deeper insight into the composition of high-value orders and customer spending behavior.

![image](https://github.com/user-attachments/assets/17cec102-1d5b-4f6b-b915-ad8f4a8385b4)
![image](https://github.com/user-attachments/assets/17e2c06a-a6e5-47fd-9fe0-325184c32711)
## View the details of the top 5 highest spend orders, What insights can be drawn?
The top 5 highest spend orders reveal customers' preference for premium items, often combining multiple high-priced dishes, particularly from the Italian and Asian categories. These orders suggest a willingness to spend more on quality or variety, possibly indicating group dining or special occasions. This insight can help the restaurant tailor promotions or bundle offers around popular high-value items.

![image](https://github.com/user-attachments/assets/6c024669-78ff-412c-a48e-8487fbfa2498)
![image](https://github.com/user-attachments/assets/3147c3ee-374d-4998-8319-72d88f7d1948)

# Recommendations
- **Promote high-value Italian dishes:**
Italian cuisine has the highest average price and features heavily in top-spending orders. Leverage this with special promotions or combo deals.
- **Expand or refine American offerings:**
The American category has the fewest dishes and lowest average price. Consider diversifying it to enhance its appeal and revenue potential.
- **Leverage popular cuisines in marketing:**
Italian and Mexican dishes are well-represented; use targeted marketing to attract fans of these cuisines and increase customer engagement.
- **Create bundles from high-spend order patterns:**
Analyze frequent item combinations in top orders and package them into value-driven meal bundles or signature selections.
- **Review and optimize pricing strategies:**
Use category performance insights to adjust pricing, ensuring alignment with customer value perception and maximizing profitability.

# Thank you For Following Through



























