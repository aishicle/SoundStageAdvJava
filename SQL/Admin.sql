create database SoundStageAdmin
create table sites
(
site_code int primary key,
site_location varchar(max)
)
create table movietheaters
(
hall_code int primary key,
-- hallPlan unsure of data type (plan layout)
site varchar(max)
)
create table plan_layout
(
plan_code int primary key
-- design_matrix unsure of data type (matrix)
)
create table seats_mapping
(
--plan unsure 
movie_theatre varchar(max)
--mapping_matrix unsure (matrix)
)
create table movies
(
movie_name varchar(max),
movie_intro varchar(max),
genre varchar(max),
movie_cast varchar(max)
)
create table shows 
(
movie_name varchar(max) foreign key references movies(movie_name),
start_timings time,
end_time time,
movie_hall int,
price money
)
create table snacks
(
snack_name varchar(max),
price money
)