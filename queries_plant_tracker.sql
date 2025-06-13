-- Show all plants that a user is growing.
use plant_tracker;

select u.user_name, p.plant_name, up.date_planted,up.location
from User_plants as up
inner join Users as u on up.user_id = u.user_id
inner join Plants as p on up.plant_id = p.plant_id
where u.user_name = 'Caroline';

-- Show care activities for a user's specicfic plant.
use plant_tracker;

select p.plant_name, cl.care_type, cl.care_date
from care_log as cl
inner join User_plants as up on cl.user_plant_id = up.user_plant_id
inner join Plants as p on up.plant_id = p.plant_id
where up.user_id = 1
order by cl.care_date desc;
	