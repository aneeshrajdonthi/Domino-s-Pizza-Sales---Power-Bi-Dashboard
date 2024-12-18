use industrial_project2;
select * from pizza_sales_excel_file;

select sum(total_price)
from pizza_sales_excel_file;

select sum(total_price)/count(distinct order_id) as avg_order_value
from pizza_sales_excel_file;

select sum(quantity) as total_pizza_sold
from pizza_sales_excel_file;

select count(distinct order_id) as total_orders
from pizza_sales_excel_file;

select cast(sum(quantity)/count(distinct order_id) as decimal(10,2)) as avg_pizzas_per_order
from pizza_sales_excel_file;

select dayofweek(order_date) as order_day, count(distinct order_id) as total_orders
from pizza_sales_excel_file
group by order_day;

select month(order_date) as order_month
from pizza_sales_excel_file;

select pizza_category, cast(sum(total_price) as decimal(10,2)) as total_revenue, 
cast((sum(total_price)*100 / (select sum(total_price) from pizza_sales_excel_file))  as decimal(10,2)) as PCT
from pizza_sales_excel_file
group by pizza_category;

select pizza_size, cast(sum(total_price) as decimal(10,2)) as total_revenue, 
cast((sum(total_price)*100 / (select sum(total_price) from pizza_sales_excel_file))  as decimal(10,2)) as PCT
from pizza_sales_excel_file
group by pizza_size;

select sum(quantity), pizza_category
from pizza_sales_excel_file
group by pizza_category
order by sum(quantity) desc;

select pizza_name, sum(total_price)
from pizza_sales_excel_file
group by pizza_name
order by sum(total_price) desc
limit 5;

select pizza_name, sum(total_price)
from pizza_sales_excel_file
group by pizza_name
order by sum(total_price) asc
limit 5; 


select pizza_name, sum(quantity)
from pizza_sales_excel_file
group by pizza_name
order by sum(quantity) desc
limit 5;

select pizza_name, sum(quantity)
from pizza_sales_excel_file
group by pizza_name
order by sum(quantity) asc
limit 5; 


select pizza_name, count(distinct order_id)
from pizza_sales_excel_file
group by pizza_name
order by count(distinct order_id) desc
limit 5;

select pizza_name, count(distinct order_id)
from pizza_sales_excel_file
group by pizza_name
order by count(distinct order_id) asc
limit 5; 