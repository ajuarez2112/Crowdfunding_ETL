-- Create the database
CREATE DATABASE crowdfunding_db;


-- Create Category Table
CREATE TABLE category (
	category_id CHAR(4) PRIMARY KEY NOT NULL,
	category VARCHAR);
	
-- Display Category table
SELECT * FROM category;

	
-- Create Subcategory table
CREATE TABLE subcategory (
	subcategory_id VARCHAR PRIMARY KEY NOT NULL,
	subcategory VARCHAR);
	
-- Display Subcategory table
SELECT * FROM subcategory;
	
	
-- Create Contacts table
CREATE TABLE contacts (
	contact_id INT PRIMARY KEY NOT NULL,
	first_name VARCHAR,
	last_name VARCHAR,
	email VARCHAR);
	
-- Display contacts table
SELECT * FROM contacts;


-- Create Campaign table
CREATE TABLE campaign (
	cf_id INT PRIMARY KEY NOT NULL,
	contact_id INT NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	company_name VARCHAR,
	description VARCHAR,
	goal DECIMAL,
	pledged DECIMAL,
	outcome VARCHAR,
	backers_count INT,
	country CHAR(2),
	currency CHAR(3),
	launch_date DATE,
	end_date DATE,
	category_id CHAR(4),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	subcategory_id VARCHAR,
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id));
	
-- Display Campaign table
SELECT * FROM campaign

	