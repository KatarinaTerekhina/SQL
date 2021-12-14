--Вывести всех работников  чьи зарплаты есть в базе, вместе с зарплатами.
select employees.employee_name, salary.monthly_salary from employee_salary
inner join employees on employees.id = employee_salary.employee_id 
inner join salary on salary.id = employee_salary.salary_id; 
--Вывести всех работников у которых ЗП меньше 2000.
select employees.employee_name, salary.monthly_salary from employee_salary
inner join employees on employees.id = employee_salary.employee_id 
inner join salary on salary.id = employee_salary.salary_id 
where monthly_salary < 2000;
--Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employees.employee_name, salary.monthly_salary from employee_salary
left join employees on employees.id = employee_salary.employee_id 
inner join salary on salary.id = employee_salary.salary_id 
where employees.id is null;
--Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employees.employee_name, salary.monthly_salary from employee_salary
left join employees on employees.id = employee_salary.employee_id 
inner join salary on salary.id = employee_salary.salary_id 
where employees.id is null and salary.monthly_salary < 2000 ;
--Найти всех работников кому не начислена ЗП.
select employees.employee_name, salary.monthly_salary from employee_salary
full JOIN employees on employees.id = employee_salary.employee_id 
full JOIN salary on salary.id = employee_salary.salary_id
where salary.monthly_salary is null;
--Вывести всех работников с названиями их должности.
select employees.employee_name, roles.role_name from roles_employee
inner join roles on roles.id = roles_employee.role_id 
inner join employees on employees.id = roles_employee.employee_id;
--Вывести имена и должность только Java разработчиков.
select employees.employee_name, roles.role_name from roles_employee
inner join roles on roles.id = roles_employee.role_id 
inner join employees on employees.id = roles_employee.employee_id
where role_name like '%Java%developer%';
--Вывести имена и должность только Python разработчиков.
select employees.employee_name, roles.role_name from roles_employee
inner join roles on roles.id = roles_employee.role_id 
inner join employees on employees.id = roles_employee.employee_id
where role_name like '%Python%developer%';
--Вывести имена и должность всех QA инженеров.
select employees.employee_name, roles.role_name from roles_employee
inner join roles on roles.id = roles_employee.role_id 
inner join employees on employees.id = roles_employee.employee_id
where role_name like '%QA%';
--Вывести имена и должность ручных QA инженеров.
select employees.employee_name, roles.role_name from roles_employee
inner join roles on roles.id = roles_employee.role_id 
inner join employees on employees.id = roles_employee.employee_id
where role_name like '%Manual%QA%';
--Вывести имена и должность автоматизаторов QA
select employees.employee_name, roles.role_name from roles_employee
inner join roles on roles.id = roles_employee.role_id 
inner join employees on employees.id = roles_employee.employee_id
where role_name like '%Automation%QA%';
--Вывести имена и зарплаты Junior специалистов
select employees.employee_name, salary.monthly_salary from employee_salary
inner join employees on employees.id = employee_salary.employee_id 
inner join salary on salary.id = employee_salary.salary_id
inner join roles on roles.id = employee_salary.employee_id 
where roles.role_name like '%Junior%';
--Вывести имена и зарплаты Middle специалистов
select employees.employee_name, salary.monthly_salary from employee_salary
inner join employees on employees.id = employee_salary.employee_id 
inner join salary on salary.id = employee_salary.salary_id
inner join roles on roles.id = employee_salary.employee_id 
where roles.role_name like '%Middle%';
--Вывести имена и зарплаты Senior специалистов
select employees.employee_name, salary.monthly_salary from employee_salary
inner join employees on employees.id = employee_salary.employee_id 
inner join salary on salary.id = employee_salary.salary_id
inner join roles on roles.id = employee_salary.employee_id 
where roles.role_name like '%Senior%';
--Вывести зарплаты Java разработчиков
select salary.monthly_salary from salary
inner join employee_salary on salary.id = employee_salary.salary_id
inner join employees on employees.id = employee_salary.employee_id 
inner join roles_employee on roles_employee.employee_id = employees.id
inner join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%Java%developer%';
--Вывести зарплаты Python разработчиков
select salary.monthly_salary from salary
inner join employee_salary on salary.id = employee_salary.salary_id
inner join employees on employees.id = employee_salary.employee_id 
inner join roles_employee on roles_employee.employee_id = employees.id
inner join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%Python%developer%';
--Вывести имена и зарплаты Junior Python разработчиков
select employees.employee_name, salary.monthly_salary from salary
inner join employee_salary on salary.id = employee_salary.salary_id
inner join employees on employees.id = employee_salary.employee_id 
inner join roles_employee on roles_employee.employee_id = employees.id
inner join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%Junior%Python%developer%';
--Вывести имена и зарплаты Middle JS разработчиков
select employees.employee_name, salary.monthly_salary from salary
inner join employee_salary on salary.id = employee_salary.salary_id
inner join employees on employees.id = employee_salary.employee_id 
inner join roles_employee on roles_employee.employee_id = employees.id
inner join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%Middle%JavaScript%developer%';
--Вывести имена и зарплаты Senior Java разработчиков
select employees.employee_name, salary.monthly_salary from salary
inner join employee_salary on salary.id = employee_salary.salary_id
inner join employees on employees.id = employee_salary.employee_id 
inner join roles_employee on roles_employee.employee_id = employees.id
inner join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%Senior%Java%developer%';
--Вывести зарплаты Junior QA инженеров
select salary.monthly_salary from salary
inner join employee_salary on salary.id = employee_salary.salary_id
inner join employees on employees.id = employee_salary.employee_id 
inner join roles_employee on roles_employee.employee_id = employees.id
inner join roles on roles.id = roles_employee.role_id 
where roles.role_name like 'junior%qa%';
--Вывести среднюю зарплату всех Junior специалистов
select round(avg(salary.monthly_salary)) from salary
inner join employee_salary on salary.id = employee_salary.salary_id
inner join employees on employees.id = employee_salary.employee_id 
inner join roles_employee on roles_employee.employee_id = employees.id
inner join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%Junior%';
--Вывести сумму зарплат JS разработчиков
select sum(salary.monthly_salary) from salary
inner join employee_salary on salary.id = employee_salary.salary_id
inner join employees on employees.id = employee_salary.employee_id 
inner join roles_employee on roles_employee.employee_id = employees.id
inner join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%JavaScript%developer%';
--Вывести минимальную ЗП QA инженеров
select min(salary.monthly_salary) from salary
inner join employee_salary on salary.id = employee_salary.salary_id
inner join employees on employees.id = employee_salary.employee_id 
inner join roles_employee on roles_employee.employee_id = employees.id
inner join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%QA%';
--Вывести максимальную ЗП QA инженеров
select max(salary.monthly_salary) from salary
inner join employee_salary on salary.id = employee_salary.salary_id
inner join employees on employees.id = employee_salary.employee_id 
inner join roles_employee on roles_employee.employee_id = employees.id
inner join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%QA%';
--Вывести количество QA инженеров
select count(employees.employee_name) from employees
inner join roles_employee on roles_employee.employee_id = employees.id
inner join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%qa%';
--Вывести количество Middle специалистов
select count(employees.employee_name) from employees
inner join roles_employee on roles_employee.employee_id = employees.id
inner join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%Middle%';
--Вывести количество разработчиков
select count(employees.employee_name) from employees
inner join roles_employee on roles_employee.employee_id = employees.id
inner join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%developer%';
--Вывести фонд (сумму) зарплаты разработчиков
select sum(salary.monthly_salary) from salary
inner join employee_salary on salary.id = employee_salary.salary_id
inner join employees on employees.id = employee_salary.employee_id 
inner join roles_employee on roles_employee.employee_id = employees.id
inner join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%developer%';
--Вывести имена, должности и ЗП всех специалистов по возрастанию
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
join salary on salary.id = employee_salary.salary_id 
order by employees.employee_name asc, roles.role_name asc, salary.monthly_salary asc;
--Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
join salary on salary.id = employee_salary.salary_id
where salary.monthly_salary between 1700 and 2300
order by employees.employee_name asc, roles.role_name asc, salary.monthly_salary asc;
--Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
join salary on salary.id = employee_salary.salary_id
where salary.monthly_salary < 2300
order by employees.employee_name asc, roles.role_name asc, salary.monthly_salary asc;
--Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
join salary on salary.id = employee_salary.salary_id
where (salary.monthly_salary = 1100) or (salary.monthly_salary = 1500) or (salary.monthly_salary = 2000)
order by employees.employee_name asc, roles.role_name asc, salary.monthly_salary asc;
