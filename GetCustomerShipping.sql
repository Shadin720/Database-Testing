DELIMITER //

CREATE PROCEDURE GetCustomerShipping(
IN pCustomerNumber INT,
OUT PShipping VARCHAR (50)
)
BEGIN 
    DECLARE customerCountry VARCHAR (100);
    
    SELECT country INTO customerCountry FROM customers WHERE customerNumber =pCustomerNumber;
    CASE  customerCountry 
    WHEN 'USA' THEN
        SET PShipping ='2 day shipping';
        WHEN 'Canada' THEN
        SET PShipping ='3 day shipping';
        ELSE
        SET PShipping ='5 day shipping';
        END CASE;
        END//
        
        DELIMITER //
         
		call GetCustomerShipping(121,@Shipping);
        select @Shipping;
        