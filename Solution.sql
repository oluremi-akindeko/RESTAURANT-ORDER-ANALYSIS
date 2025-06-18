--Number of Items on the Menu
select distinct count(*) as number_of_items
from menu_items

--What are the least expensive and most expensive items on the menu?
SELECT * FROM (
    SELECT 
        item_name, 
        category, 
        price, 
        'Least Expensive' AS price_type
    FROM menu_items
    ORDER BY price
    LIMIT 1
) AS least_item

UNION ALL

SELECT * FROM (
    SELECT 
        item_name, 
        category, 
        price, 
        'Most Expensive' AS price_type
    FROM menu_items
    ORDER BY price DESC
    LIMIT 1
) AS most_item;

--How many Italian dishes are on the menu?
select distinct count(*) as number_of_italian_dishes
from menu_items
where category = 'Italian'

--What are the least expensive and most expensive Italian dishes on the menu?
SELECT * FROM (
	select 
		item_name, 
		category, 
		price,
		'Least Expensive' AS price_type
	from menu_items
	where category = 'Italian'
	order by 3
	limit 1
) as least_expensive_dish	

UNION ALL

SELECT * FROM (
	select 
		item_name, 
		category, 
		price,
		'Most Expensive' AS price_type
	from menu_items
	where category = 'Italian'
	order by 3 desc
	limit 1
) as most_expensive_dish	

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
	round(avg(price):: numeric,2) as average_price
from menu_items
group by 1

--What is the date range of the orders table?
select 
	min(order_date) as start_date,
	max(order_date) as end_date
from order_details

--How many orders and items were ordered within this date range?
select 
	count(distinct order_id) as orders_received,
	count(distinct order_details_id) as items_ordered
from order_details
where order_date between(select min(order_date) from order_details)
and (select max(order_date) from order_details)

--Which orders had the most number of items?
select
	distinct order_id,
	count(order_details_id) as most_items
from order_details
group by 1
Having count(order_details_id) = '14'
order by 2 desc

--How many orders had more than 12 items?
SELECT COUNT(*) AS orders_with_more_than_12_items
FROM (
    SELECT order_id
    FROM order_details
    GROUP BY order_id
    HAVING COUNT(order_details_id) > 12
) AS sub;

--What are the least ordered and most ordered items? What category are they in?
SELECT * FROM (
	select
		item_name,
		category,
		count(order_details_id) as num_of_items,
		'Least Ordered' AS order_frequency
	from order_details od
	left join menu_items mi on od.item_id = mi.menu_items_id
	group by 1,2
	order by 3
	limit 1
) AS least_ordered_item	

UNION ALL

SELECT * FROM (
	select
		item_name,
		category,
		count(order_details_id) as num_of_items,
		'Most Ordered' AS order_frequency
	from order_details od
	left join menu_items mi on od.item_id = mi.menu_items_id
	group by 1,2
	order by 3 desc
	limit 1
) AS Most_ordered_item		

--What were the top 5 orders that spent the most money?
select
	order_id,
	round(sum(price):: numeric,2) as amount_spent
from order_details od
join menu_items mi on od.item_id = mi.menu_items_id
group by 1
order by 2 desc
limit 5

--View the details of the highest spend order. Which specific items were purchased?
--what insights can you draw?
select 
	item_name,
	mi.category,
	price,
	count(item_id) as number_of_items
from order_details od
left join menu_items mi on od.item_id = mi.menu_items_id
where od.order_id = 440
group by 1,2,3

--View the details of the top 5 highest spend orders, What insights can be drawn?
select 
	od.order_id,
	mi.category,
	round(sum(mi.price)::numeric, 2) as amount_spent,
	count(od.item_id) as number_of_items
from order_details od
left join menu_items mi on od.item_id = mi.menu_items_id
where od.order_id in (440, 2075, 1957, 330, 2675)
group by 1,2
order by 1,3 desc
