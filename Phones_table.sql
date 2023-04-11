CREATE TABLE telephons
(  Id INT PRIMARY KEY,  
NameProduct VARCHAR(45) NOT NULL,  
Manufacturer VARCHAR(45),  
Price DOUBLE,  
ProductCount INT);  

INSERT  into telephons(id,NameProduct, Manufacturer, Price, ProductCount) 
VALUES 
(1,'iPhone X', 'Apple', 76000, 3),
(2,'iPhone 8', 'Apple', 51000, 2),
(3,'Galaxy S9', 'Samsung', 56000, 2),
(4,'Galaxy S8', 'Samsung', 41000, 1),
(5,'P20 Pro', 'Huawei', 36000, 5),
(6,'V23E', 'Vivo', 19900, 7);

select * from telephons

-- 2. Выведите название, производителя и цену для товаров, количество которых превышает 2 

SELECT NameProduct, Manufacturer, Price 
FROM telephons 
WHERE ProductCount > 2; 

-- 3. Выведите весь ассортимент товаров марки “Samsung”

SELECT *FROM telephons WHERE Manufacturer = 'Samsung';
