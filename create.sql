create table publisher(
id integer primary key,
name text not null,
country text not null
);

create table books(
id integer primary key,
title text not null,
publisher integer not null,
foreign key(publisher) references publisher(id)
);

create table subjects(
id integer primary key,
name text not null
);

create table books_subjects(
book integer not null,
subject integer not null,
foreign key (book) references books(id),
foreign key (subject) references subjects(id)
);
