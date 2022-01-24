create table if not exists genre(
id serial primary key,
name text unique
);
create table if not exists executors(
id serial primary key,
name varchar(15) not null,
starting_career integer not null,
genre_id integer references genre(id)
);
create table if not exists album(
id serial primary key,
name text unique,
year integer not null,
executors_id integer references executors(id) 
);
create table if not exists trek(
id serial primary key,
name text unique,
duration numeric(4,2) not null,
album_id integer references album(id) 
); 
