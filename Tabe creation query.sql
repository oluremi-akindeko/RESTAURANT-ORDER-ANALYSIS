create table order_details(
	order_details_id serial,
	order_id varchar,
	order_date date,
	order_time time,
	item_id varchar)
	
create table menu_items(
	menu_items_id serial primary key,
	item_name varchar,
	category varchar,
	price float)

