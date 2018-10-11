use adlister_db;
​
drop table users if exists;
​
--Users Table

create table users (
user_id int(10) unsigned not null auto_increment,
email varchar(50) not null,
password varchar(50) not null,
primary key (user_id)
​
);

--Ads Table
​
drop table ads if exists;
​
create table ads (
 ad_id int (10) unsigned not null auto_increment,
 user_id int(10) unsigned not null,
 title varchar(50) not null,
 description text not null,
 primary key (ad_id, user_id),
 key user_id (user_id),
 key ad_id (ad_id),
 constraint ads_fk_1 foreign key (user_id) references users (user_id)
);

--Categories Table
​
drop table categories if exists;
​
create table categories (
cat_id int (10) unsigned not null auto_increment,
cat_name varchar(50),
primary key (cat_id)
);

--Relational Table for Ads and Categories
​
drop table ads_cat if exists;
​
create table ads_cat (
cat_id int (10) unsigned not null,
ad_id int (10) unsigned not null,
key cat_id (cat_id),
key ad_id (ad_id),
constraint ads_cat_fk_1 foreign key (cat_id) references categories (cat_id),
constraint ads_cat_fk_2 foreign key (ad_id) references ads (ad_id)
);

--Insert into tables

INSERT INTO users (email, password)
VALUES ('ScarlettWitchChaos@marvel.com', 'RIPQuicksilver'),
       ('JoeCool33@peanuts.com', 'woodstock'),
       ('TheWarriorPrincess@xena.com', 'chakram33'),
       ('MagicKingdom@disney.com', 'thelinesaretoolong'),
       ('PoohCorner@hundredacrewood.com', 'wantmorehunny'),
       ('firstUser@email.com','mypassword'),
       ('thisUser@email.com','newpassword'),
       ('newUser@server.com','badpassword'),
       ('person@domain.com','password1234'),
       ('lastuser@domain.com','easypass'),
       ('joesmith@email.com','password1'),
       ('janesmith@email.com','password2'),
       ('johnsmith@server.com','password3'),
       ('jimsmith@domain.com','password4'),
       ('junesmith@domain.com','password5');

INSERT INTO categories (cat_name)
VALUES ('Automotive', 'Entertainment', 'Sports', 'Trash', 'Hobbies', 'Apparel', 'Toys', 'Pet', 'Jobs', 'Home and Garden');

INSERT into ads (user_id, title, description)
VALUES  (1, 'Television for sale', 'Somebody please buy this tv'),
        (2, 'Room for rent', 'I have a room available for blahblahblahblah gimme your money'),
        (3, 'Car trouble', 'My car is not working and I am short on cash for a mechanic.  Can anybody help me?'),
        (4, 'Dog walking business', 'Am available to walk dogs in the local area.  I charge 2 dollars per pound of dog per hour of walk, dont @ me'),
        (5, 'Need part time worker','Looking for part time help to get new business off the ground.  No cash but can offer exposure to clients'),
        (6, 'Beanie Babies for Sale', 'Delayed onset of buyer''s remorse for all of the beanie babies I bought in 1996 that now leave me in a state of ennui.'),
        (7, 'Broken clutch', 'Old stick from a car I found on the side of the street.'),
        (8, 'Lululemon Men''s Apparel', 'Old apparel from an ex I''d rather sell than burn.'),
        (9, 'Football', 'Next door neighbor''s football I''m selling because I do not care for them.'),
        (10, 'Dog Beds', 'Selling two dog beds that my dog did not like.')
        (11, 'Lost Dog', 'I found a dog, he is cute and misses you'),
        (12, 'Personal Assistant needed', 'Fix my life, I need help!'),
        (13, 'Fishing Anyone', 'Trying to get a group together to go fishing.'),
        (14, 'Toys for sale', 'Kid outgrew their toys, buy them before I throw them out'),
        (15, 'Apartment for rent', 'Great condition, only a few roaches.');


--Ad Categories Table
INSERT INTO ads_cat (cat_id, ad_id)
VALUES
(2,1),
(10, 2),
(1, 3),
(8, 4),
(9, 5),
(7, 6),
(1, 7),
(6, 8),
(3, 9),
(8, 10),
(8, 11),
(9, 12),
(5, 13),
(7, 14),
(10, 15);


--Queries

SELECT title
from ads
JOIN categories
on ads
where

SELECT *
from ads
WHERE category = 'Entertainment';

SELECT *
from ads
WHERE email = 'ScarlettWitchChaos@marvel.com';

