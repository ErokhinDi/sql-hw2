create table if not exists genres(
id SERIAL primary key,
name Varchar (30)
);

create table if not exists singer(
id SERIAL primary key,
id_album integer,
name varchar (20),
id_genres integer references genres(id)
);
 
create table album(
id serial primary key,
name varchar (40),
date_realese date,
id_singer integer references singer(id)
);

create table track(
id serial primary key,
name varchar(30),
duration integer not null,
id_album integer references album(id)
);


create table collections(
id serial primary key,
name varchar (40),
release date,
id_track integer references track(id)
);


CREATE TABLE IF NOT EXISTS album_singer(
id_singer INTEGER REFERENCES singer(id),
id_album INTEGER REFERENCES album(id)
);
CREATE TABLE IF NOT EXISTS collect_track(
id_track INTEGER REFERENCES track(id),
id_collections INTEGER REFERENCES collections(Id)
);

CREATE TABLE IF NOT EXISTS singer_genres(
id_singer INTEGER REFERENCES singer(id),
id_genres INTEGER REFERENCES genres(id)
);