--Number of Items on the Menu
select distinct count(*) as number_of_items
from menu_items

--What is the least expensive item on the menu?
select 
	item_name, 
	category, 
	price 
from menu_items
order by price
limit 1

--What is the most expensive item on the menu?
select 
	item_name, 
	category, 
	price 
from menu_items
order by price desc
limit 1

--How many Italian dishes are on the menu?
select distinct count(*) as number_of_italian_dishes
from menu_items
where category = 'Italian'

--What is the least expensive Italian dish on the menu?
select 
	item_name, 
	category, 
	price
from menu_items
where category = 'Italian'
order by 3
limit 1

--What is the most expensive Italian dish on the menu?
select 
	item_name, 
	category, 
	price
from menu_items
where category = 'Italian'
order by 3 desc
limit 1

--How many dishes are in each category?
select 
	category,
	count(*) as number_of_dishes
from menu_items
group by 1

--What is the average dish price within each category?
select 
	category,
	count(*) as number_of_dishes,
	avg(price) as average_price
from menu_items
group by 1

--What is the date range of the orders table?
select 
	min(order_date) as start_date,
	max(order_date) as end_date
from order_details

--How many orders and items were ordered within this date range?
select 
	count(distinct order_id) as number_of_orders,
	count(distinct order_details_id) as number_of_items
from order_details
where order_date between(select min(order_date) from order_details)
and (select max(order_date) from order_details)

--Which orders had the most number of items?
select
	order_id,
	count(order_details_id) as most_items
from order_details
group by 1
order by 2 desc
limit 1

--How many orders had more than 12 items?
select
	order_id,
	count(order_details_id) as most_items
from order_details
group by 1
having (select count(order_details_id) >12 )
order by 2

--Combine the menu_items and order_details tables into a single table
select
	*
from order_details od
left join menu_items mi on od.item_id = mi.menu_items_id

--What is the least ordered item? What categories is it in?
select
	item_name,
	category,
	count(order_details_id) as num_of_items
from order_details od
left join menu_items mi on od.item_id = mi.menu_items_id
group by 1,2
order by 3
limit 1

--What is the most ordered item? What categories is it in?
select
	item_name,
	category,
	count(order_details_id) as num_of_items
from order_details od
left join menu_items mi on od.item_id = mi.menu_items_id
group by 1,2
order by 3 desc
limit 1

--What were the top 5 orders that spent the most money?
select
	order_id,
	sum(price) as amount_spent
from order_details od
join menu_items mi on od.item_id = mi.menu_items_id
group by 1
order by 2 desc
limit 5

--View the details of the highest spend order. Which specific items were purchased?
--what insights can you draw?
select 
	category,
	count(item_id) as number_of_items
from order_details od
left join menu_items mi on od.item_id = mi.menu_items_id
where order_id = 440
group by 1

--View the details of the top 5 highest spend orders, What insights can be drawn?
select 
	order_id,
	category,
	count(item_id) as number_of_items
from order_details od
left join menu_items mi on od.item_id = mi.menu_items_id
where order_id in (440, 2075, 1957, 330, 2675)
group by 1,2
