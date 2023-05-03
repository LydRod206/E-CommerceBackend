-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

-- CREATE CATEGORY MODEL
CREATE TABLE Categories (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(255) NOT NULL
);
-- CREATE PRODUCT MODEL
CREATE TABLE Products (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL, 
    stock INT NOT NULL DEFAULT 10,
    category_id INT UNSIGNED NOT NULL,
    CONSTRAINT fk_category_id FOREIGN KEY (category_id) REFERENCES categories(id)
);
-- CREATE TAG MODEL
CREATE TABLE Tags (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    tag_name VARCHAR(255)
);
-- CREATE PRODUCTTAG THROUGH MODEL
CREATE TABLE ProductTag (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product_id INT UNSIGNED NOT NULL,
    CONSTRAINT fk_product_id FOREIGN KEY (product_id) REFERENCES Products(id),
    tag_id INT UNSIGNED NOT NULL,
    CONSTRAINT fk_tag_id FOREIGN KEY (tag_id) REFERENCES Tags(id)
);
-- CREATE ASSOCIATIONS BETWEEN MODELS / JUNCTION TABLE
Categories.hasMany(Products);
Products.belongsTo(Categories);
Products.belongsToMany(Tags, {through: ProductTags});
Tags.belongsToMany(Products, {through: ProductTag});