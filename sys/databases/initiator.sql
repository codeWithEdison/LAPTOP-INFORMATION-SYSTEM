
/* unique constraints is not used in this database (db)*/
/*initiation of database*/
create database mysor;
USE mysor;
GRANT ALL ON mysor.* TO 'nicole'@'localhost' IDENTIFIED BY 'nicole_123';

/*tables*/

/*customers*/
CREATE TABLE customers(
    cust_id int NOT NULL AUTO_INCREMENT,
    u_code varchar(50),
    first_name varchar(100),
    other_names varchar(100),
    gender char(10),
    nationality varchar(100),
    n_id varchar(50),/* national id*/
    phone_number varchar(100),
    PRIMARY KEY (cust_id)
    );


/*users_admin*/

CREATE TABLE admins(
    u_id int NOT NULL AUTO_INCREMENT,
    u_code varchar(50),
    first_name varchar(100),
    other_names varchar(100),
    gender char(10),
    nationality varchar(100),
    n_id varchar(50),/* national id*/
    phone_number varchar(100),
    PRIMARY KEY (u_id)
    );


/*credentials*/

CREATE TABLE credentials(
    cred_id int NOT NULL AUTO_INCREMENT,
    u_code varchar(50),
    u_type varchar(50),
    email varchar(50),
    password varchar(50),
    PRIMARY KEY (cred_id)
    );



/*stock*/

CREATE TABLE stock(
    stock_id int NOT NULL AUTO_INCREMENT,
    prod_code varchar(50),
    i_a varchar(255) /* item amount, in terms of cash*/,
    t_i_a varchar(255) /* total items amount, in terms of cash*/,
    d_o_p varchar(255) /* date of purchase, time when item purchased*/,
    PRIMARY KEY (stock_id)
    );


/*products*/

CREATE TABLE products(
    prod_id int NOT NULL AUTO_INCREMENT,
    prod_code varchar(50),
    prod_name varchar(100),
    prod_ammount int(50),
    prod_waranty varchar(50),
    support_grant varchar(50),
    PRIMARY KEY (prod_id)
    );


/*products discounts*/

CREATE TABLE discounts(
    disc_id int NOT NULL AUTO_INCREMENT,
    prod_code varchar(50),
    months varchar(50),
    d_p varchar(50)/*discount percent*/,
    PRIMARY KEY (disc_id)
    );



/*residence*/

CREATE TABLE residence(
    res_id int NOT NULL AUTO_INCREMENT,
    u_code varchar(50),
    country varchar(50),
    province varchar(50),
    district varchar(50),
    sector varchar(50),
    PRIMARY KEY (res_id)
    );




/*Customer Payememts*/

CREATE TABLE payements(
    pay_id int NOT NULL AUTO_INCREMENT,
    u_code varchar(50),
    prod_code varchar(50),
    l_pay varchar(50)/*latest payement*/,
    date_due varchar(50),
    PRIMARY KEY (pay_id)
    );