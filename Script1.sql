create table if not exists Genres(
	id SERIAL primary key,
	name VARCHAR(60) not null
);

create table if not exists Performers(
	id SERIAL primary key,
	name VARCHAR(60) not null
);

create table if not exists PerformersGenres(
	performer integer references Performers(id),
	gener integer references Genres(id),
	constraint pk_performersgenres primary key (performer, gener)
);

create table if not exists Albums(
	id SERIAL primary key,
	name VARCHAR(60) not null,
	year INTEGER not null
);

create table if not exists PerformersAlbums(
	performer integer references Performers(id),
	album integer references Albums(id),
	constraint pk_performersalbums primary key (performer, album)
);

create table if not exists Tracks(
	id SERIAL primary key,
	name VARCHAR(60) not null,
	duration INTEGER not null,
	album integer references Albums(id)
);

create table if not exists Collections(
	id SERIAL primary key,
	name VARCHAR(60) not null,
	year integer not null
);

/*create table if not exists TrackCollections(
	album INTEGER references Albums(id),
	collection INTEGER references Collections(id),
	constraint pk_trackcollections primary key(album, collection),
	track INTEGER references Tracks(id)
);*/

create table if not exists TrackCollections(
	id SERIAL primary key,
	collection INTEGER references Collections(id),
	track INTEGER references Tracks(id)
);
