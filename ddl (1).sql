create schema cs;

create table cs.supplier
(
	id INTEGER primary key,
	supplier_nm VARCHAR(64) not null,
	discount INTEGER,
	check (discount >= 0 and discount <= 25),
	delivery_time INTEGER,
	check (delivery_time > 0),
	phone_number VARCHAR(64) not null,
	check (phone_number like'+[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
);

create table cs.autopart
(
	id INTEGER primary key,
	autopart_nm VARCHAR(64) not null,
	cost INTEGER not null,
	check (cost > 0),
	autopart_cnt INTEGER not null,
	check (autopart_cnt >= 0),
	supplier_id integer not null,
	foreign key (supplier_id) references cs.supplier(id)
);


create table cs.client
(
	id INTEGER primary key,
	firstname VARCHAR(64) not null,
	surname VARCHAR(64) not null,
	phone_number VARCHAR(64) not null,
	check (phone_number like'+[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
);


create table cs.automobile
(
	id INTEGER primary key,
	brand VARCHAR(64) not null,
	model VARCHAR(64) not null,
	mileage INTEGER not null,
	automobile_age INTEGER not null,
	check (automobile_age >= 0),
	check (mileage >= 0),
	client_id integer not null,
	foreign key (client_id) references cs.client(id)
);

create table cs.client_discount
(
	id INTEGER primary key,
	client_id integer not null,
	foreign key (client_id) references cs.client(id),
	discount_amount INTEGER not null,
	check (discount_amount >= 0 and discount_amount <= 10),
	activation_dt TIMESTAMP not null,
	ending_dt TIMESTAMP not null
);


create table cs.place
(
	id INTEGER primary key,
	address VARCHAR(64) not null,
	place_area numeric not null,
	check (place_area > 0),
	rent INTEGER not null,
	check(rent > 0)
);

create table cs.employee
(
	id INTEGER primary key,
	firstname VARCHAR(64) not null,
	surname VARCHAR(64) not null,
	employee_position VARCHAR(64) not null,
	experience INTEGER not null,
	check(experience >= 0),
	place_id integer not null,
	foreign key (place_id) references cs.place(id)
);

create table cs.project
(
	id INTEGER primary key,
	autopart_id integer not null,
	place_id integer not null,
	automobile_id integer not null,
	foreign key (autopart_id) references cs.autopart(id),
	foreign key (place_id) references cs.place(id),
	foreign key (automobile_id) references cs.automobile(id),
	status VARCHAR(64) not null,
	date DATE not null
);
