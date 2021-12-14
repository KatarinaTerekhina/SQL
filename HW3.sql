--������� ���� ����������  ��� �������� ���� � ����, ������ � ����������.
select employees.employee_name, salary.monthly_salary from employee_salary
inner join employees on employees.id = employee_salary.employee_id 
inner join salary on salary.id = employee_salary.salary_id; 
--������� ���� ���������� � ������� �� ������ 2000.
select employees.employee_name, salary.monthly_salary from employee_salary
inner join employees on employees.id = employee_salary.employee_id 
inner join salary on salary.id = employee_salary.salary_id 
where monthly_salary < 2000;
--������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employees.employee_name, salary.monthly_salary from employee_salary
left join employees on employees.id = employee_salary.employee_id 
inner join salary on salary.id = employee_salary.salary_id 
where employees.id is null;
--������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employees.employee_name, salary.monthly_salary from employee_salary
left join employees on employees.id = employee_salary.employee_id 
inner join salary on salary.id = employee_salary.salary_id 
where employees.id is null and salary.monthly_salary < 2000 ;
--����� ���� ���������� ���� �� ��������� ��.
select employees.employee_name, salary.monthly_salary from employee_salary
full JOIN employees on employees.id = employee_salary.employee_id 
full JOIN salary on salary.id = employee_salary.salary_id
where salary.monthly_salary is null;
--������� ���� ���������� � ���������� �� ���������.
select employees.employee_name, roles.role_name from roles_employee
inner join roles on roles.id = roles_employee.role_id 
inner join employees on employees.id = roles_employee.employee_id;
--������� ����� � ��������� ������ Java �������������.
select employees.employee_name, roles.role_name from roles_employee
inner join roles on roles.id = roles_employee.role_id 
inner join employees on employees.id = roles_employee.employee_id
where role_name like '%Java%developer%';
--������� ����� � ��������� ������ Python �������������.
select employees.employee_name, roles.role_name from roles_employee
inner join roles on roles.id = roles_employee.role_id 
inner join employees on employees.id = roles_employee.employee_id
where role_name like '%Python%developer%';
--������� ����� � ��������� ���� QA ���������.
select employees.employee_name, roles.role_name from roles_employee
inner join roles on roles.id = roles_employee.role_id 
inner join employees on employees.id = roles_employee.employee_id
where role_name like '%QA%';
--������� ����� � ��������� ������ QA ���������.
select employees.employee_name, roles.role_name from roles_employee
inner join roles on roles.id = roles_employee.role_id 
inner join employees on employees.id = roles_employee.employee_id
where role_name like '%Manual%QA%';
--������� ����� � ��������� ��������������� QA
select employees.employee_name, roles.role_name from roles_employee
inner join roles on roles.id = roles_employee.role_id 
inner join employees on employees.id = roles_employee.employee_id
where role_name like '%Automation%QA%';
--������� ����� � �������� Junior ������������
select employees.employee_name, salary.monthly_salary from employee_salary
inner join employees on employees.id = employee_salary.employee_id 
inner join salary on salary.id = employee_salary.salary_id
inner join roles on roles.id = employee_salary.employee_id 
where roles.role_name like '%Junior%';
--������� ����� � �������� Middle ������������
select employees.employee_name, salary.monthly_salary from employee_salary
inner join employees on employees.id = employee_salary.employee_id 
inner join salary on salary.id = employee_salary.salary_id
inner join roles on roles.id = employee_salary.employee_id 
where roles.role_name like '%Middle%';
--������� ����� � �������� Senior ������������
select employees.employee_name, salary.monthly_salary from employee_salary
inner join employees on employees.id = employee_salary.employee_id 
inner join salary on salary.id = employee_salary.salary_id
inner join roles on roles.id = employee_salary.employee_id 
where roles.role_name like '%Senior%';
--������� �������� Java �������������
select salary.monthly_salary from salary
inner join employee_salary on salary.id = employee_salary.salary_id
inner join employees on employees.id = employee_salary.employee_id 
inner join roles_employee on roles_employee.employee_id = employees.id
inner join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%Java%developer%';
--������� �������� Python �������������
select salary.monthly_salary from salary
inner join employee_salary on salary.id = employee_salary.salary_id
inner join employees on employees.id = employee_salary.employee_id 
inner join roles_employee on roles_employee.employee_id = employees.id
inner join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%Python%developer%';
--������� ����� � �������� Junior Python �������������
select employees.employee_name, salary.monthly_salary from salary
inner join employee_salary on salary.id = employee_salary.salary_id
inner join employees on employees.id = employee_salary.employee_id 
inner join roles_employee on roles_employee.employee_id = employees.id
inner join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%Junior%Python%developer%';
--������� ����� � �������� Middle JS �������������
select employees.employee_name, salary.monthly_salary from salary
inner join employee_salary on salary.id = employee_salary.salary_id
inner join employees on employees.id = employee_salary.employee_id 
inner join roles_employee on roles_employee.employee_id = employees.id
inner join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%Middle%JavaScript%developer%';
--������� ����� � �������� Senior Java �������������
select employees.employee_name, salary.monthly_salary from salary
inner join employee_salary on salary.id = employee_salary.salary_id
inner join employees on employees.id = employee_salary.employee_id 
inner join roles_employee on roles_employee.employee_id = employees.id
inner join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%Senior%Java%developer%';
--������� �������� Junior QA ���������
select salary.monthly_salary from salary
inner join employee_salary on salary.id = employee_salary.salary_id
inner join employees on employees.id = employee_salary.employee_id 
inner join roles_employee on roles_employee.employee_id = employees.id
inner join roles on roles.id = roles_employee.role_id 
where roles.role_name like 'junior%qa%';
--������� ������� �������� ���� Junior ������������
select round(avg(salary.monthly_salary)) from salary
inner join employee_salary on salary.id = employee_salary.salary_id
inner join employees on employees.id = employee_salary.employee_id 
inner join roles_employee on roles_employee.employee_id = employees.id
inner join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%Junior%';
--������� ����� ������� JS �������������
select sum(salary.monthly_salary) from salary
inner join employee_salary on salary.id = employee_salary.salary_id
inner join employees on employees.id = employee_salary.employee_id 
inner join roles_employee on roles_employee.employee_id = employees.id
inner join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%JavaScript%developer%';
--������� ����������� �� QA ���������
select min(salary.monthly_salary) from salary
inner join employee_salary on salary.id = employee_salary.salary_id
inner join employees on employees.id = employee_salary.employee_id 
inner join roles_employee on roles_employee.employee_id = employees.id
inner join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%QA%';
--������� ������������ �� QA ���������
select max(salary.monthly_salary) from salary
inner join employee_salary on salary.id = employee_salary.salary_id
inner join employees on employees.id = employee_salary.employee_id 
inner join roles_employee on roles_employee.employee_id = employees.id
inner join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%QA%';
--������� ���������� QA ���������
select count(employees.employee_name) from employees
inner join roles_employee on roles_employee.employee_id = employees.id
inner join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%qa%';
--������� ���������� Middle ������������
select count(employees.employee_name) from employees
inner join roles_employee on roles_employee.employee_id = employees.id
inner join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%Middle%';
--������� ���������� �������������
select count(employees.employee_name) from employees
inner join roles_employee on roles_employee.employee_id = employees.id
inner join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%developer%';
--������� ���� (�����) �������� �������������
select sum(salary.monthly_salary) from salary
inner join employee_salary on salary.id = employee_salary.salary_id
inner join employees on employees.id = employee_salary.employee_id 
inner join roles_employee on roles_employee.employee_id = employees.id
inner join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%developer%';
--������� �����, ��������� � �� ���� ������������ �� �����������
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
join salary on salary.id = employee_salary.salary_id 
order by employees.employee_name asc, roles.role_name asc, salary.monthly_salary asc;
--������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
join salary on salary.id = employee_salary.salary_id
where salary.monthly_salary between 1700 and 2300
order by employees.employee_name asc, roles.role_name asc, salary.monthly_salary asc;
--������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
join salary on salary.id = employee_salary.salary_id
where salary.monthly_salary < 2300
order by employees.employee_name asc, roles.role_name asc, salary.monthly_salary asc;
--������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
join salary on salary.id = employee_salary.salary_id
where (salary.monthly_salary = 1100) or (salary.monthly_salary = 1500) or (salary.monthly_salary = 2000)
order by employees.employee_name asc, roles.role_name asc, salary.monthly_salary asc;
