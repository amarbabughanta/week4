INSERT INTO brand(brand_id,Brand_name,quantity,price)
VALUES('b4','detol',2,100)


UPDATE brand
SET Brand_name='savlon',quantity=5,price=250
WHERE brand_id='b4';


DELETE FROM brand WHERE brand_id='b4';

SELECT Brand_name, price
FROM brand
ORDER BY Brand_name, price ASC


SELECT brand_name
FROM brand
WHERE brand_name='colgate';


SELECT brand.Brand_id, Category_name, brand.Brand_name
FROM brand
INNER JOIN category ON brand.Brand_id=Category.Category_id;

SELECT MAX(Total_order)
FROM store

SELECT MIN(price)
FROM glosary_items


SELECT AVG(price)
FROM brand

SELECT COUNT(quantity)
FROM category

  SELECT stock AS glosary_stock
                FROM glosary_items;



