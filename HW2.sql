create table salary (
id serial primary key,
monthly_salary int not null 
);
create table roles (
id serial primary key,
role_name varchar (30) not null unique
);
create table employees (
id serial primary key,
employee_name varchar (50) not null
);
create table employee_salary (
id serial primary key,
employee_id int not null unique,
salary_id int not null
);
create table roles_employee (
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id) references employees (id),
foreign key (role_id) references roles (id));
insert into employees (employee_name)
values ('Kate Terekhina');
insert into employees (employee_name)
values ('Ann Smith');
insert into employees (employee_name)
values ('John Snow');
insert into employees (employee_name)
values ('John Do');
insert into employees (employee_name)
values ('Sam Bin');
insert into employees (employee_name)
values ('Fox F');
insert into employees (employee_name)
values ('John D');
insert into employees (employee_name)
values ('Dan Do');
insert into employees (employee_name)
values ('Jack Sparrow');
insert into employees (employee_name)
values ('Jane Smith');
insert into employees (employee_name)
values ('Josh K');
insert into employees (employee_name)
values ('Bob Back');
insert into employees (employee_name)
values ('John Do Jr');
insert into employees (employee_name)
values ('John Junior');
insert into employees (employee_name)
values ('Kitty Bis');
insert into employees (employee_name)
values ('Jonny D');
insert into employees (employee_name)
values ('Noah');
insert into employees (employee_name)
values ('Liam');
insert into employees (employee_name)
values ('William');
insert into employees (employee_name)
values ('Mason');
insert into employees (employee_name)
values ('James');
insert into employees (employee_name)
values ('Benjamin');
insert into employees (employee_name)
values ('Jacob');
insert into employees (employee_name)
values ('Michael');
insert into employees (employee_name)
values ('Elijah');
insert into employees (employee_name)
values ('Ethan');
insert into employees (employee_name)
values ('Emma');
insert into employees (employee_name)
values ('Olivia');
insert into employees (employee_name)
values ('Ava');
insert into employees (employee_name)
values ('Sophia');
insert into employees (employee_name)
values ('Isabella');
insert into employees (employee_name)
values ('Isabella');
insert into employees (employee_name)
values ('Mia');
insert into employees (employee_name)
values ('Charlotte');
insert into employees (employee_name)
values ('Abigail');
insert into employees (employee_name)
values ('Emily');
insert into employees (employee_name)
values ('Harper'), ('Everett'),('Henry'),
('Charlie'),('Edwin'),('Sam'),('Marshall'),
('Calvin'),('Edgar'),('Lola'),('Lillian'),
('Elizabeth'),('Stella'),('Genevieve'),('Cora'),
('Evelyn'),('Lucy'),('Lucia'),('Clara'),
('Ruby'),('Eva'),('Prescott'),('Grover'),
('Oberon'),('Regis'),('Thelonious'),('Flannery'),
('Alberta'),('Sigourney'),('Talullah'),('Antigone'),
('Andrew'),('Harry'),('Daniel');
insert into employees (employee_name)
values ('Nicholas');
insert into salary (monthly_salary)
values (1000), (1100), (1200), (1300), (1400), (1500), 
(1600), (1700), (1800), (1900), (2000), (2100), 
(2200), (2300), (2400), (2500);
insert into employee_salary (employee_id, salary_id )
values (3, 7), (1, 4), (5, 9), (40, 13), (23, 4), (11, 2), (52, 10), (15, 13), (26, 4), (16, 1), (33, 7), 
(63, 5), (17, 16), (28, 13), (54, 16), (66, 7), (77, 13), (70, 9), (65, 15), (53, 10), (82, 13), (95, 7),
(43, 3), (45, 8), (101, 9), (34, 10), (55, 13), (203, 15), (18, 6), (13, 13), (666, 13), (777, 7), (12, 12),
(999, 13), (21, 4), (333, 7), (37, 8), (103, 9), (69, 9), (71, 10);
ALTER TABLE roles ALTER COLUMN role_name type varchar (30); 
insert into roles (role_name)
values ('Junior Python developer'), ('Middle Python developer'), ('Senior Python developer'), 
('Junior Java developer'), ('Middle Java developer'), ('Senior Java developer'), 
('Junior JavaScript developer'), ('Middle JavaScript developer'), ('Senior JavaScript developer'), 
('Junior Manual QA engineer'), ('Middle Manual QA engineer'), ('Senior Manual QA engineer'), 
('Project Manager'), ('Designer'), ('HR'), ('CEO'), ('Sales manager'), 
('Junior Automation QA engineer'), ('Middle Automation QA engineer'), ('Senior Automation QA engineer');
insert into roles_employee (employee_id, role_id)
values (7, 2), (20, 4), (3, 9), (5, 13), (23, 4), (11, 2), (10, 9), (22, 13), (21, 3), (34, 4), (6, 7), 
(63, 5), (17, 16), (28, 13), (54, 16), (66, 7), (67, 13), (70, 9), (65, 15), (58, 10), (53, 13), (36, 7),
(43, 3), (45, 8), (61, 9), (30, 10), (55, 13), (1, 15), (18, 6), (13, 13), (62, 13), (59, 7), (12, 12),
(35, 13), (27, 4), (2, 7), (37, 8), (24, 9), (69, 9), (44, 10);


