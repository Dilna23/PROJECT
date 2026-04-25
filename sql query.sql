select * from superstoresales;
select distinct * from superstoresales;
select sum(Sales) as total_sales from superstoresales;
select Customer_Name,sum(Sales) as total_sales from superstoresales group by Customer_Name order by total_sales desc limit 5;
select Category,sum(Sales) as total_sales, sum(Profit) as total_profit from superstoresales group by Category;
select Sub_Category,sum(Profit) as total_loss from superstoresales group by  Sub_Category having total_loss<0;
select Region ,sum(Sales) as total_sales from superstoresales group by Region order by total_sales desc;
select * from superstoresales where Sales> (select avg(Sales) from superstoresales);
select month(str_to_date(Order_Date,'%d-%m-%y')) as Month ,sum(Sales) as total_sales from superstoresales group by Month order by Month;
select Category ,avg(Discount) as avg_discount from superstoresales group by Category;


