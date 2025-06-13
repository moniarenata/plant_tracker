-- Create database for plant tracker.
create database plant_tracker;
use plant_tracker;

-- Create tables
create table Plants (
plant_id INT primary key,
plant_name VARCHAR (50),
sun_requirement VARCHAR (50),
watering_freqency_days INT 
);

create table Users (
user_id INT primary key,
user_name VARCHAR (100)
);

create table User_plants(
user_plant_id INT primary key,
user_id INT,
plant_id INT, 
date_planted DATE,
location VARCHAR(100),
foreign key (user_id) references Users(user_id),
foreign key (plant_id) references Plants(plant_id)
);

create table care_log (
care_id INT primary key, 
user_plant_id INT,
care_type VARCHAR (150),
care_date DATE,
foreign key (user_plant_id) references User_plants(user_plant_id)
);

-- Enter sample data.
insert into Plants values
(1, 'Tomato', 'Full sun', 2),
(2, 'Cucumber', 'Full sun', 2),
(3, 'Potato', 'Full sun', 7),
(4, 'Sunflower', 'Full sun', 3);

insert into Users values
(1, 'Caroline'),
(2, 'Edward'),
(3, 'Kate');

insert into User_plants values
(1, 1, 1, '2025-05-27', 'Allotment'),
(2, 3, 2, '2025-05-30', 'Allotment'),
(3, 2, 3, '2025-04-17', 'Allotment'),
(4, 1, 4, '2025-06-05', 'Back garden');

insert into care_log values
(1, 1, 'Prune', '2025-06-13'),
(2, 2, 'Fertilise', '2025-06-10'),
(3, 1, 'Fertilise', '2025-06-09' ),
(4, 3, 'Water', '2025-06-10'),
(5, 4, 'Water', '2025-06-08');
