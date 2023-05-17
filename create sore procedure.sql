delimiter //
create procedure SelectAllCustomersByCity(IN mycity varchar(50))
Begin
       select * from customers where city=mycity;
end //
delimiter ;

call SelectAllCustomersByCity('singapore');
