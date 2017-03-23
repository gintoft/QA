-- 5.1 Сколько клиентов из Германии

SELECT 
COUNT(CustomerName) 
FROM Customers 
WHERE Customers.Country = 'Germany';

-- 5.2 Сколько имен клиентов оканчиваются на "е"

SELECT CustomerName 
FROM Customers
WHERE CustomerName LIKE '%e'


-- 5.3. Вставить свое имя в таблицу Customers

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Alexander Gintoft','Alexander Gintoft', 'Kamenskaya 56','Novosibirsk','630099','Russia');

-- 5.4. Изменить собственное имя, вставленное в таблицу

UPDATE Customers
SET CustomerName = 'Sasha Gintoft'
WHERE CustomerName = 'Alexander Gintoft';

-- 5.5. Удалить всех клиентов из города Nantes

DELETE FROM Customers
WHERE City = 'Nantes';

-- 5.6. Прислать номера заказов, оформленных для клиентов работником с именем Steven


SELECT 
O.OrderID

FROM 
Orders O
inner join Employees E
on O.EmployeeID = E.EmployeeID

WHERE E.FirstName = 'Steven'