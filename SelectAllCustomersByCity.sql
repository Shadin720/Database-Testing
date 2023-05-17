delimiter //
create procedure SelectAllCustomersByCity(IN mycity varchar(50))
begin
       select * from customers where city=mycity;
end //
delimiter ;
call SelectAllCustomersByCity('London');