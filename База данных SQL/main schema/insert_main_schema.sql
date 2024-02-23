insert into main.countries(country)
select distinct *
	from (
		select country
		from sources.top100_kp
		union 
		select country
		from sources.top500_kp
		union
		select country
		from (select regexp_split_to_table(
			  replace(replace(replace(country, '[', ''), ']', ''), '''', ''),
			  ', ') 
			  as country
			  from sources.top250)
		);

insert into main.genres(genre)
select distinct *
	from (
		select genre
		from sources.top100_kp
		union 
		select genre
		from sources.top500_kp
		union
		select genre
		from (select regexp_split_to_table(
			  replace(replace(replace(genre, '[', ''), ']', ''), '''', ''),
			  ', ') 
			  as genre
			  from sources.top250)
		);

insert into main.actors(actor)
select distinct *
	from (
		select starring
		from (select regexp_split_to_table(
			  replace(replace(replace(starring, '[', ''), ']', ''), '''', ''),
			  ', ') 
			  as starring
			  from sources.top100_kp)
		union
		select starring
		from (select regexp_split_to_table(
			  replace(replace(replace(starring, '[', ''), ']', ''), '''', ''),
			  ', ') 
			  as starring
			  from sources.top500_kp)
		);

insert into main.directors(director)
select distinct * 
	from (
		select director
		from sources.top100_kp
		union
		select director
		from sources.top500_kp
		);
		
insert into main.sources(source)
values ('KinoPoisk'),
	('Mail.ru');