create schema sources

create table sources.top100_kp(
	id int primary key, 
	ru_name text,
	en_name text,
	year int,
	length int,
	country text,
	genre text,
	director text,
	starring text,
	rating numeric,
	ratings_number numeric);

copy sources.top100_kp
from 'D:\MovieDB\CreatingTables\top100_kp\top100_kp.csv'
delimiter ','
encoding 'UTF8'
csv header;

create table sources.top250(
	id int primary key, 
	ru_name text,
	en_name text,
	country text,
	year int,
	genre text,
	rating numeric,
	imdb_ratings numeric);

copy sources.top250
from 'D:\MovieDB\CreatingTables\top250\top250.csv'
delimiter ','
encoding 'UTF8'
csv header;

create table sources.top500_kp(
	id int primary key, 
	ru_name text,
	en_name text,
	year int,
	length int,
	country text,
	genre text,
	director text,
	starring text,
	rating numeric,
	ratings_number numeric);

copy sources.top500_kp
from 'D:\MovieDB\CreatingTables\top500_kp\top500_kp.csv'
delimiter ','
encoding 'UTF8'
csv header;

create table sources.watched(
	id int primary key, 
	ru_name text,
	en_name text,
	year int,
	rating numeric,
	ratings_number int,
	length int);

copy sources.watched
from 'D:\MovieDB\CreatingTables\watched\watched.csv'
delimiter ','
encoding 'UTF8'
csv header;

create table sources.will_watch(
	id int primary key, 
	ru_name text,
	en_name text,
	year int,
	rating numeric,
	ratings_number int,
	length int);

copy sources.will_watch
from 'D:\MovieDB\CreatingTables\will_watch\will_watch.csv'
delimiter ','
encoding 'UTF8'
csv header;