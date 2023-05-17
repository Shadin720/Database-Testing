use classicmodels;

SHOW PROCEDURE STATUS WHERE db='classicmodels';
SHOW PROCEDURE STATUS WHERE Name='SelectAllCustomers';

 Call SelectAllCustomers();
 Select * from customers
 
Call SelectAllCustomersByCity('Singapore');
Select * from customers WHERE city='Singapore' and postalcode ='079903';

 Call get_order_by_cust (141,@shipped,@canceled,@resolve, @disputed);
 SELECT @shipped,@canceled,@resolve,@disputed;
 
 
select
(SELECT count(*) as'shipped' FROM orders WHERE  customerNumber = customerNumber = 141 AND  status='Shipped') as Shipped,
(SELECT count(*)  as'canceled' FROM orders WHERE customerNumber= customerNumber= 141 AND  status='canceled') as canceled,
(SELECT count(*) as'Resolved' FROM orders WHERE customerNumber= customerNumber= 141 AND  status='Resolved') as Resolved,
(SELECT count(*) as'Disputed' FROM orders WHERE customerNumber= customerNumber= 141 AND  status='Disputed') as Disputed;    




CALL GetCustomerShipping (112,@shipping);
SELECT @shipping AS ShippingTime;       
                                             
CALL GetCustomerShipping (260,@shipping);                        
SELECT @shipping AS ShippingTime;      
                                               
CALL GetCustomerShipping (353,@shipping);
SELECT @shipping AS ShippingTime;            


SELECT country,
CASE 
WHEN country='USA' THEN ' 2-day Shipping'  
WHEN country='USA' THEN ' 3-day Shipping'
ELSE '5-day Shippig'   
END as ShippingTime 
FROM customers WHERE customerNumber =112;                                                                                                                            