SET GLOBAL log_bin_trust_function_creators = 1;
CREATE USER 'e_newman'@'%' IDENTIFIED BY 'p@ssw0rd';
GRANT SELECT, INSERT, UPDATE, DELETE ON `my_guitar_shop`.`Customers` TO 'e_newman'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON `my_guitar_shop`.`Addresses` TO 'e_newman'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON `my_guitar_shop`.`Orders` TO 'e_newman'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON `my_guitar_shop`.`Order_Items` TO 'e_newman'@'%';
GRANT SELECT ON `my_guitar_shop`.`Products` TO 'e_newman'@'%';
GRANT SELECT ON `my_guitar_shop`.`Categories` TO 'e_newman'@'%';
REVOKE GRANT OPTION ON `my_guitar_shop`.* FROM 'e_newman'@'%';
SHOW GRANTS FOR 'e_newman'@'%';
FLUSH PRIVILEGES;