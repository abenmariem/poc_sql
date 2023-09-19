-- Create the schema and insert data

CREATE TABLE organisation (id integer, name varchar, parent_id integer);

INSERT INTO organisation 
VALUES 
    (1,'organisation', null),
    (2,'organisation2', 1),
    (3,'organisation3', 1),
    (4,'organisation4', 3),
    (5,'organisation5', 3);

CREATE TABLE person (id integer, name varchar, organisation_id integer);

INSERT INTO person 
VALUES 
    (1,'pdg', 1),
    (2,'person2', 2),
    (3,'person3', 2),
    (4,'person4', 2),
    (5,'person5', 3),
    (6,'person6', 3),
    (7,'person7', 3),
    (8,'person8', 3),
    (9,'person9', 3),
    (10,'person10', 4),
    (11,'person11', 5),
    (12,'person12', 5);
