     CREATE TABLE `brand` (
	`Brand_id` VARCHAR(50) NULL DEFAULT NULL,
	`Brand_name` VARCHAR(50) NULL DEFAULT NULL,
	`quantity` FLOAT NULL DEFAULT NULL,
	`price` FLOAT NULL DEFAULT NULL
)
COLLATE='latin1_swedish_ci'
;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='glosary';
SHOW TABLE STATUS FROM `glosary`;
SHOW FUNCTION STATUS WHERE `Db`='glosary';
SHOW PROCEDURE STATUS WHERE `Db`='glosary';
SHOW TRIGGERS FROM `glosary`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='glosary';
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='glosary' AND TABLE_NAME='brand' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `brand` FROM `glosary`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='glosary'   AND TABLE_NAME='brand'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='glosary'   AND TABLE_NAME='brand'   AND REFERENCED_TABLE_NAME IS NOT NULL;
/* Entering session "Unnamed-1" */
SHOW CREATE TABLE `glosary`.`brand`;
SELECT CONSTRAINT_NAME, CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` WHERE CONSTRAINT_SCHEMA='glosary' AND TABLE_NAME='brand';

LOAD DATA LOW_PRIORITY LOCAL INFILE 'C:\\Users\\rupan\\OneDrive\\Desktop\\brand.csv' REPLACE INTO TABLE `glosary`.`brand` CHARACTER SET latin1 FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY ',' ESCAPED BY ',' LINES TERMINATED BY '\r\n' IGNORE 1 LINES (`Brand_id`, `Brand_name`, `quantity`, `price`);
CREATE TABLE `category` (
	`Category_id` VARCHAR(50) NULL DEFAULT NULL,
	`Category_name` VARCHAR(50) NULL DEFAULT NULL,
	`quantity` FLOAT NULL DEFAULT NULL
)
COLLATE='latin1_swedish_ci'
;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='glosary';
SHOW TABLE STATUS FROM `glosary`;
SHOW FUNCTION STATUS WHERE `Db`='glosary';
SHOW PROCEDURE STATUS WHERE `Db`='glosary';
SHOW TRIGGERS FROM `glosary`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='glosary';
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='glosary' AND TABLE_NAME='category' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `category` FROM `glosary`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='glosary'   AND TABLE_NAME='category'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='glosary'   AND TABLE_NAME='category'   AND REFERENCED_TABLE_NAME IS NOT NULL;
/* Entering session "Unnamed-1" */
SHOW CREATE TABLE `glosary`.`category`;
SELECT CONSTRAINT_NAME, CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` WHERE CONSTRAINT_SCHEMA='glosary' AND TABLE_NAME='category';


LOAD DATA LOW_PRIORITY LOCAL INFILE 'C:\\Users\\rupan\\OneDrive\\Desktop\\category.csv' REPLACE INTO TABLE `glosary`.`category` CHARACTER SET latin1 FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY ',' ESCAPED BY ',' LINES TERMINATED BY '\r\n' IGNORE 1 LINES (`Category_id`, `Category_name`, `quantity`);



CREATE TABLE `Customer_details` (
	`customer_id` VARCHAR(50) NULL DEFAULT NULL,
	`customer_name` VARCHAR(50) NULL DEFAULT NULL,
	`customer_address` VARCHAR(50) NULL DEFAULT NULL,
	`phone_number` VARCHAR(50) NULL DEFAULT NULL
)
COLLATE='latin1_swedish_ci'
;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='glosary';
SHOW TABLE STATUS FROM `glosary`;
SHOW FUNCTION STATUS WHERE `Db`='glosary';
SHOW PROCEDURE STATUS WHERE `Db`='glosary';
SHOW TRIGGERS FROM `glosary`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='glosary';


LOAD DATA LOW_PRIORITY LOCAL INFILE 'C:\\Users\\rupan\\OneDrive\\Desktop\\Customer_details.csv' REPLACE INTO TABLE `glosary`.`customer_details` CHARACTER SET latin1 FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY ',' ESCAPED BY ',' LINES TERMINATED BY '\r\n' IGNORE 1 LINES (`customer_id`, `customer_name`, `customer_address`, `phone_number`);


CREATE TABLE `Glosary_items` (
	`item_id` VARCHAR(50) NULL DEFAULT NULL,
	`stock` VARCHAR(50) NULL DEFAULT NULL,
	`quantity` INT(20) NULL DEFAULT NULL,
	`price` INT(20) NULL DEFAULT NULL
)
COLLATE='latin1_swedish_ci'
;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='glosary';
SHOW TABLE STATUS FROM `glosary`;
SHOW FUNCTION STATUS WHERE `Db`='glosary';
SHOW PROCEDURE STATUS WHERE `Db`='glosary';
SHOW TRIGGERS FROM `glosary`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='glosary';



LOAD DATA LOW_PRIORITY LOCAL INFILE 'C:\\Users\\rupan\\OneDrive\\Desktop\\Glosary_items.csv' REPLACE INTO TABLE `glosary`.`glosary_items` CHARACTER SET latin1 FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY ',' ESCAPED BY ',' LINES TERMINATED BY '\r\n' IGNORE 1 LINES (`item_id`, `stock`, `quantity`, `price`);

CREATE TABLE `store` (
	`Store_id` VARCHAR(50) NULL DEFAULT NULL,
	`Store_name` VARCHAR(50) NULL DEFAULT NULL,
	`Total_order` INT NULL
)
COLLATE='latin1_swedish_ci'
;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='glosary';
SHOW TABLE STATUS FROM `glosary`;
SHOW FUNCTION STATUS WHERE `Db`='glosary';
SHOW PROCEDURE STATUS WHERE `Db`='glosary';
SHOW TRIGGERS FROM `glosary`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='glosary';
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='glosary' AND TABLE_NAME='store' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `store` FROM `glosary`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='glosary'   AND TABLE_NAME='store'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='glosary'   AND TABLE_NAME='store'   AND REFERENCED_TABLE_NAME IS NOT NULL;
/* Entering session "Unnamed-1" */
SHOW CREATE TABLE `glosary`.`store`;
SELECT CONSTRAINT_NAME, CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` WHERE CONSTRAINT_SCHEMA='glosary' AND TABLE_NAME='store';


LOAD DATA LOW_PRIORITY LOCAL INFILE 'C:\\Users\\rupan\\OneDrive\\Desktop\\store.csv' REPLACE INTO TABLE `glosary`.`store` CHARACTER SET latin1 FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY ',' ESCAPED BY ',' LINES TERMINATED BY '\r\n' IGNORE 1 LINES (`Store_id`, `Store_name`, `Total_order`);
