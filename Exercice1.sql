/* 1. Création d'une base de données appelée public. */
CREATE DATABASE public;

/* 2. Ajoutez deux tables */

/*  Création de la table items avec les colonnes suivantes:
    - idItems (int, primary key, not null, auto increment)
    - item_name (varchar, not null)
    - price (int, not null) */
USE public;

CREATE TABLE items (
    idItems SERIAL PRIMARY KEY,
    item_name VARCHAR(255) NOT NULL,
    price INT NOT NULL
);

/*  Créatin de lavtable clients avec les colonnes suivantes:
    - idCustomers (int, primary key, not null, auto increment)
    - first_name (varchar, not null)
    - last_name (varchar, not null) */
CREATE TABLE customers (
    idCustomers SERIAL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL
);

/* 2.1. Insection les données suivantes dans la table des items:
    - Petit bureau, 100
    - Grand bureau, 300
    - Ventilateur, 80 */
INSERT INTO items (item_name, price)
VALUES ('Petit bureau', 100), ('Grand bureau', 300), ('Ventilateur', 80);

/* 2.2. Insection les données suivantes dans la table des clients:
    - Greg, Jones
    - Sandra, Jones
    - Scott, Scott
    - Trevor, Vert
    - Melanie, Johnson */
INSERT INTO customers (first_name, last_name)
VALUES ('Greg', 'Jones'), ('Sandra', 'Jones'), ('Scott', 'Scott'), ('Trevor', 'Vert'), ('Melanie', 'Johnson');

/* 3.Utilisation de  SQL pour récupérer les données suivantes de la base de données */

/* 3.1. Sélection de  toutes les données de la table des items. */
SELECT * FROM items;

/* 3.2. Sélection de tous les articles dont le prix est supérieur à 80 (80 non inclus). */
SELECT * FROM items WHERE price > 80;

/* 3.3.Sélection de  tous les articles dont le prix est inférieur à 300. (300 inclus)*/
SELECT * FROM items WHERE price <= 300;

/* 3.4. Sélection de tous les clients dont le nom de famille est « Smith ». */
SELECT * FROM customers WHERE last_name = 'Smith';

/* 3.5. Sélection de tous les clients dont le nom de famille est 'Jones'. */
SELECT * FROM customers WHERE last_name = 'Jones';

/* 3.6.Sélection tous les clients dont le prénom n'est pas 'Scott'. */
SELECT * FROM customers WHERE first_name != 'Scott';