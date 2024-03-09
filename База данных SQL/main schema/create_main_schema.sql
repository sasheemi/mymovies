create schema main

create table main.directors(
	director_id serial primary key,
	director text);

create table main.movies(
	movie_id serial primary key,
	ru_name text, 
	en_name text,
	year int,
	length int,
	rating real,
	director_id int,
	foreign key (director_id) 
		references main.directors(director_id) 
		on delete set default);

create table main.watched(
	movie_id int,
	watched_day date,
	foreign key (movie_id)
		references main.movies(movie_id)
		on delete set default);

create table main.will_watch(
	movie_id int,
	added_day date,
	foreign key (movie_id)
		references main.movies(movie_id)
		on delete cascade);

create table main.genres(
	genre_id serial primary key,
	genre text);

create table main.countries(
	country_id serial primary key,
	country text);

create table main.sources(
	source_id serial primary key,
	source text);
	
create table main.actors(
	actor_id serial primary key,
	actor text,
	country_id int,
	foreign key (country_id)
		references main.countries(country_id)
		on delete restrict);

create table main.movie_genre(
	movie_id int,
	genre_id int,
	foreign key (movie_id)
		references main.movies(movie_id)
		on delete restrict,
	foreign key (genre_id)
		references main.genres(genre_id)
		on delete restrict);

create table main.movie_actor(
	movie_id int,
	actor_id int,
	foreign key (movie_id)
		references main.movies(movie_id)
		on delete restrict,
	foreign key (actor_id)
		references main.actors(actor_id)
		on delete restrict);

create table main.movie_country(
	movie_id int,
	country_id int,
	foreign key (movie_id)
		references main.movies(movie_id)
		on delete restrict,
	foreign key (country_id)
		references main.countries(country_id)
		on delete restrict);

create table main.movie_source(
	movie_id int,
	source_id int,
	foreign key (movie_id)
		references main.movies(movie_id)
		on delete restrict,
	foreign key (source_id)
		references main.sources(source_id)
		on delete restrict);