--Создать таблицу salary:
-- id. Serial  primary key,
-- monthly_salary. Int, not null

create table salary (
id serial primary key,
monthly_salary int not null 
);

--Создать таблицу roles:
-- id. Serial  primary key,
-- role_name. int, not null, unique

create table roles (
id serial primary key,
role_name varchar (30) not null unique
);

--Создать таблицу employees:
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null

create table employees (
id serial primary key,
employee_name varchar (50) not null
);

--Создать таблицу employee_salary:
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null

create table employee_salary (
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

--Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee (
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id) references employees (id),
foreign key (role_id) references roles (id));

--Наполнить таблицу employee 70 строками

insert into employees (employee_name)
values ('Kate Terekhina'),('Ann Smith'),('John Snow'),('John Do'),('Sam Bin'), ('Fox F'),('John D'),('Dan Do'),('Jack Sparrow'),'Jane Smith');,('Josh K'),
('Bob Back'),('John Do Jr'), ('John Junior'),('Kitty Bis'), ('Jonny D'), ('Noah'),('Liam'),('William'),('Mason'),('James'), 
('Benjamin'), ('Jacob'),('Michael'), ('Elijah'), ('Ethan'), ('Emma'), ('Olivia'), ('Ava'),('Sophia'),('Isabella'), ('Isabella'), ('Mia'),('Charlotte'),('Abigail'),
('Emily'),('Harper'), ('Everett'),('Henry'),('Charlie'),('Edwin'),('Sam'),('Marshall'),('Calvin'),('Edgar'),('Lola'),('Lillian'),('Elizabeth'),('Stella'),
('Genevieve'),('Cora'),('Evelyn'),('Lucy'),('Lucia'),('Clara'),('Ruby'),('Eva'),('Prescott'),('Grover'),('Oberon'),('Regis'),('Thelonious'),('Flannery'),
('Alberta'),('Sigourney'),('Talullah'),('Antigone'),('Andrew'),('Harry'),('Daniel'),('Nicholas');

--Наполнить таблицу salary 15 строками: 1000, 1100, 1200, 1300, 1400, 1500, 1600, 1700, 1800, 1900, 2000, 2100, 2200, 2300, 2400, 2500

insert into salary (monthly_salary)
values (1000), (1100), (1200), (1300), (1400), (1500), 
(1600), (1700), (1800), (1900), (2000), (2100), 
(2200), (2300), (2400), (2500);

--Наполнить таблицу employee_salary 40 строками
insert into employee_salary (employee_id, salary_id )
values (3, 7), (1, 4), (5, 9), (40, 13), (23, 4), (11, 2), (52, 10), (15, 13), (26, 4), (16, 1), (33, 7), 
(63, 5), (17, 16), (28, 13), (54, 16), (66, 7), (77, 13), (70, 9), (65, 15), (53, 10), (82, 13), (95, 7),
(43, 3), (45, 8), (101, 9), (34, 10), (55, 13), (203, 15), (18, 6), (13, 13), (666, 13), (777, 7), (12, 12),
(999, 13), (21, 4), (333, 7), (37, 8), (103, 9), (69, 9), (71, 10);

--Поменять тип столба role_name с int на varchar(30)

ALTER TABLE roles ALTER COLUMN role_name type varchar (30); 

--Наполнить таблицу roles 20 строками
insert into roles (role_name)
values ('Junior Python developer'), ('Middle Python developer'), ('Senior Python developer'), 
('Junior Java developer'), ('Middle Java developer'), ('Senior Java developer'), 
('Junior JavaScript developer'), ('Middle JavaScript developer'), ('Senior JavaScript developer'), 
('Junior Manual QA engineer'), ('Middle Manual QA engineer'), ('Senior Manual QA engineer'), 
('Project Manager'), ('Designer'), ('HR'), ('CEO'), ('Sales manager'), 
('Junior Automation QA engineer'), ('Middle Automation QA engineer'), ('Senior Automation QA engineer');

--Наполнить таблицу roles_employee 40 строками
insert into roles_employee (employee_id, role_id)
values (7, 2), (20, 4), (3, 9), (5, 13), (23, 4), (11, 2), (10, 9), (22, 13), (21, 3), (34, 4), (6, 7), 
(63, 5), (17, 16), (28, 13), (54, 16), (66, 7), (67, 13), (70, 9), (65, 15), (58, 10), (53, 13), (36, 7),
(43, 3), (45, 8), (61, 9), (30, 10), (55, 13), (1, 15), (18, 6), (13, 13), (62, 13), (59, 7), (12, 12),
(35, 13), (27, 4), (2, 7), (37, 8), (24, 9), (69, 9), (44, 10);


