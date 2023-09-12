-- 1:
SELECT product_id, product_name, category_id
FROM products
WHERE unit_price > 50;

-- 2:
SELECT *
FROM customers
WHERE country = 'Germany';

-- 3:
SELECT *
FROM orders
WHERE customer_id = 'ALFKI';

-- 4:
SELECT orders.customer_id, SUM(order_details.unit_price * order_details.quantity * (1 - order_details.discount)) AS total_orders
FROM orders, order_details
WHERE orders.order_id = order_details.order_id
GROUP BY orders.customer_id;

-- 5:
SELECT *
FROM products
ORDER BY unit_price DESC
LIMIT 5;

-- 6:
SELECT *
FROM employees
WHERE birth_date < DATE('1960-01-01');

-- 7:
SELECT *
FROM products
WHERE units_in_stock = 0;

-- 8:
SELECT AVG(unit_price)
FROM products;

-- 9:
SELECT product_id, SUM(unit_price) * SUM(quantity) as sum_all
FROM order_details
GROUP BY product_id
ORDER BY product_id;

-- 10:
SELECT COUNT(category_id)
FROM categories;

-- 11:
SELECT *
FROM products
WHERE discontinued = 1;

-- 12:
SELECT COUNT(*)
FROM orders
WHERE EXTRACT(YEAR FROM order_date) >= 1997;

-- 13
SELECT *
FROM customers
WHERE contact_title IN ('CEO', 'Owner');

-- 14:
SELECT *
FROM products
ORDER BY unit_price DESC
LIMIT 1;

-- 15
SELECT AVG(extract (year from CURRENT_DATE) - extract (year from birth_date))
FROM employees;

-- 16:
SELECT *
FROM customers
WHERE phone LIKE '%123%';

-- 17:
SELECT *
FROM products
WHERE units_in_stock < 10 AND discontinued != 1;

-- 18:
SELECT MAX(unit_price) AS HighestPrice, MIN(unit_price) AS LowestPrice
FROM products;

-- 19:
SELECT *
FROM orders
WHERE order_date = DATE('05-05-1997');

-- 20:
SELECT product_name, quantity_per_unit
FROM public.products;

-- 21:
SELECT *
FROM products
WHERE unit_price > (SELECT AVG(unit_price) FROM products);

-- 22:
SELECT city, COUNT(*)
FROM employees
GROUP BY city;