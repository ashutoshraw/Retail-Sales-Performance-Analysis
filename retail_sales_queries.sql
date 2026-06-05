create database retail_sales;
use retail_sales;

# WHAT ARE THE TOTAL SALES ,PROFIT AND ORDERS OF THE STORE?
select * from retail_sales;
select count(*) as total_orders,
		round(sum(sales),2) as total_sales,
        round(sum(profit),2) as total_profit,
        round(avg(sales),2) as avg_order_value
        from retail_sales;
        
# WHICH REGION GENERATES THE MOST PROFIT ?
select region,
count(*) as total_orders,
round(sum(sales),2) as total_sales,
round(sum(profit),2) as total_profit,
round((sum(profit)/sum(sales))*100,2) as profit_margin
from retail_sales
group by region 
order by total_sales desc;

# WHICH STATE HAS THE HIGHEST AND LOWEST SALES?
select state,
round(sum(sales),2) as total_sales,
round(sum(profit),2) as total_profit
from retail_sales
group by state 
order by total_sales desc limit 10;

#WHICH CATEGORY GENERATES THE MOST REVENUE AND PROFIT?
select category,
round(sum(sales),2) as total_sales,
round(sum(profit),2) as total_profit
from retail_sales 
group by category
order by total_sales desc;

#WHICH SUB-CATEGORY IS THE MOST AND LEAST PROFITABLE?
select sub_category,
round(sum(profit),2) as total_profit
from retail_sales
group by sub_category
order by total_profit desc;

# WHICH ARE THE TOP 10 PRODUCTS BY SALES?
select product_name,
round(sum(sales),2) as total_sales
from retail_sales
group by product_name
order by total_sales desc 
limit 10;

# WHICH CUSTOMER SEGMENT GENERATES THE MOST PROFIT ?
select segment,
count(*) as total_orders,
		round(sum(sales),2) as total_sales,
        round(sum(profit),2) as total_profit
from retail_sales
group by segment
order by total_profit desc;
        
# WHAT ARE THE TOP 10 CUSTOMERES BY SALES AND WHAT IS THEIR PROFIT CONTRIBUTION ?
select customer_name,
segment,round(sum(sales),2) as total_sales,
round(sum(profit),2) as total_profit,
rank()over(order by sum(sales) desc) as sales_rank,
rank()over(order by sum(profit) desc) as profit_rank
from retail_sales
group by customer_name,segment limit 10;

# HOW DO DIFFERENT DISCOUNTS LEVEL AFFECT PROFIT ?
select 
case when discount=0 then 'No Discount'
	 when discount<=0.2 then 'Low Discount'
     when discount<=0.4 then 'Medium Discount'
     else 'High Discount'
     end as discount_category,
     count(*) as total_orders,
     
     round(sum(sales),2) as total_sales,
     round(sum(profit),2) as total_profit,
     round(avg(profit),2) as avg_profit
     from retail_sales
     group by discount_category
     order by discount_category;
     
# WHICH CATEGORY RECIEVES THE HIGHEST AVERAGE DISCOUNT AND HOW IS IT AFFECTING THEIR PROFIT?

select category,
round(avg(discount)*100,2) as avg_discount_percent,
round(sum(profit),2) as total_profit,
round(sum(sales),2) as total_sales
from retail_sales
group by category
order by avg_discount_percent desc;
select * from retail_sales;
#WHICH SHIP MODE IS MOST USED AND MOST PROFITABLE ?
select ship_mode,
round(sum(profit),2) as total_profit,
rank() over(order by sum(profit)) as ship_mode_rank
from retail_sales
group by ship_mode
order by total_profit,ship_mode_rank desc;

# HOW MANY ORDERS ARE PROFITABLE,BREAKING EVEN, OR MAKING A LOSS?
select 
case when 
profit>0 then 'profitable'
when profit=0 then 'break even'
else 'loss'
end as order_status,
count(*) as total_orders,
round(sum(profit),2) as total_profit
from retail_sales
group by order_status
order by total_profit desc;