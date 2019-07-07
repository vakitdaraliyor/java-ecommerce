CREATE TABLE category (
		
		id IDENTITY,
		name VARCHAR(50),
		description VARCHAR(255),
		image_url VARCHAR(50),
		is_active BOOLEAN,
		
		constraint pk_category_id primary key (id)
		
);

insert into category (name, description, image_url, is_active) VALUES ('Laptop', 'This is description for Laptop', 'CAT1.png', true);
insert into category (name, description, image_url, is_active) VALUES ('Television', 'This is description for Television', 'CAT2.png', true);
insert into category (name, description, image_url, is_active) VALUES ('Mobile', 'This is description for Mobile', 'CAT3.png', true);

CREATE TABLE user_detail (
		id IDENTITY,
		first_name VARCHAR(50),
		last_name VARCHAR(50),
		role VARCHAR(50),
		enabled BOOLEAN,
		password VARCHAR(50),
		email VARCHAR(100),
		contact_number VARCHAR(15),
		constraint pk_user_id primary key (id),
);

insert into user_detail
(first_name, last_name, role, enabled, password, email, contact_number)
VALUES ('Virat', 'Kohli', 'ADMIN', true, 'admin', 'vk@gmail.com', '8888888888');

insert into user_detail
(first_name, last_name, role, enabled, password, email, contact_number)
VALUES ('Ravindra', 'Jadeja', 'SUPPLIER', true, '12345', 'rj@gmail.com', '9999999999');

insert into user_detail
(first_name, last_name, role, enabled, password, email, contact_number)
VALUES ('Ravichandra', 'Ashwin', 'SUPPLIER', true, '12345', 'ra@gmail.com', '7777777777');

CREATE TABLE product (
		id IDENTITY,
		code VARCHAR(20),
		name VARCHAR(50),
		brand VARCHAR(50),
		description VARCHAR(255),
		unit_price DECIMAL(10,2),
		quantity int,
		is_active BOOLEAN,
		category_id int,
		supplier_id int,
		purchases int DEFAULT 0,
		views int DEFAULT 0,
		constraint pk_product_id primary key (id),
		constraint fk_product_category_id foreign key (category_id) references category (id),
		constraint fk_product_supplier_id foreign key (supplier_id) references user_detail (id)
);

insert into product
(code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id)
values
('PRDABC123DEFX', 'iPhone 5s', 'apple', 'This is one of the best phone available in the market', 57000, 5, true, 2,3);

insert into product
(code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id)
values
('PRDDEF123DEFX', 'Samsung s7', 'samsung', 'A smart phone by samsung', 32000, 2, true, 3,2);

insert into product
(code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id)
values
('PRDPQR123WGTX', 'Google Pixel', 'google', 'This is one of the best android smart phone available in the market', 60000, 3, true, 1,2);

insert into product
(code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id)
values
('PRDABCXYZDEFX', 'Macbook Pro', 'apple', 'This is one of the best laptop series available in the market', 65000, 1, true, 1,3);