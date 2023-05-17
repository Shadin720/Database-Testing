use classicmodels;
show tables;

SELECT count(*) AS NumberOfColumns FROM information_schema.columns WHERE table_name ='customers';

SELECT column_name FROM information_schema.columns WHERE table_name ='productlines';

SELECT column_name , data_type FROM information_schema.columns WHERE table_name ='orders';

SELECT column_name , column_type FROM information_schema.columns WHERE table_name ='customers';

SELECT column_name , is_nullable FROM information_schema.columns WHERE table_name ='customers';

SELECT column_name , column_key FROM information_schema.columns WHERE table_name ='payments';
