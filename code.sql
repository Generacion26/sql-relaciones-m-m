-- select * from 
select * from users;
select * from cars;
select * from usersCars;
-- users
create table users (
	id serial primary key,
	firstname varchar(100),
	lastname varchar(100),
	email varchar(100),
	phone varchar(100)
);

insert into users (firstname,lastname,email,phone) values
	('Manuela','Valencia','manu@gmail.com','+5435(332)32'),
	('Alan','Solis','alan@gmail.com','+5435(332)32'),
	('Sergio','Riatiga','sergio@gmail.com','+5435(332)32'),
	('jorge','Uceta','jorge@gmail.com','+5435(332)32'),
	('Eduardo','Mannig','eduardo@gmail.com','+5435(332)32');	

-- cars 
create table cars (
	id serial primary key,
	brand varchar(100),
	model varchar(100),
	color varchar(100)
);

insert into cars (brand,model,color) values
	('Nissan', 'Skyline', 'Blue'),
	('Toyota', 'Supra', 'Red'),
	('Tesla', 'NSX', 'Black');

--pivot
create table usersCars(
	id serial primary key,
	user_id int references users(id),
	cars_id int references cars(id)
);

insert into usersCars (user_id,cars_id) values 
	(3,2),
	(5,1),
	(4,3),
	(1,1);

-- inner join m:m

-- users - usersCars - cars
select * from users inner join usersCars 
	on users.id = usersCars.user_id inner join cars
	on usersCars.cars_id = cars.id;

-- usersCars - users - cars

-- cars - usersCars - users  






















