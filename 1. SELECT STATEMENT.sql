select * from parks_and_recreation.employee_demographics;

SELECT first_name,
 last_name,
 age,
 (age + 10)*10+10
 FROM  employee_demographics;
 
 #PEMDAS : Parathesis Exponation Multiplication,Division,Addition,Substraction. THIS IS THE ORDER THAT THE CALCULATION RUN WHEN EXECUTING THE QUERY
 
 #******************DISTINCT  QUERY**********
 #IT IS QUERY THAT IS USED TO SELECT THE UNIQUE VALUE FROM THE COLUMN. 
 # FOR EXAMPLE HERE I WANT TO CHECK THE GENDER I HAVE IN GENDER COLUMN

 SELECT DISTINCT gender 
 FROM employee_demographics;
 
 SELECT DISTINCT occupation 
 FROM employee_salary;
 
 #******* WHERE Clause ***************************
 #basically it is query that helps to retrieve the data that meet some specific conditions 
 
 SELECT * 
 FROM employee_salary
 WHERE salary >= 50000 and salary<= 70000;
 
 
 SELECT * 
 FROM employee_demographics
 WHERE birth_date < "1995-01-01"
 AND gender = 'male';
 
 
 
 # ****************LIKE STATEMENT ***************
 -- Like is statement where it used to retrieve very special or unique value. for example i want to get a row with names that contain er or MA. 
--  in this case we use % or - symbols 

SELECT *
FROM employee_demographics
WHERE first_name like "Jer%";  # this code retrive data that start with Jer followed  any other characher after it or not.

SELECT *
FROM employee_demographics
WHERE  first_name 
LIKE "A___"; # this A with 3 underscore sign means, i want a first name that start with A and followed by exact 3 character. this (_) is used where we know exact character



-- *******************************GROUP BY AND ORDER BY STATEMENTS ********************
#The GROUP BY statement is used when we want to computer some aggregation on some column, for example average , maximum or minimum 
#ORDER BY : This statement is used when we want to make order in our data, for example ordering in ascending or descending.
SELECT gender, AVG(age), MAX(age), COUNT(age)
FROM employee_demographics
GROUP BY gender ;        # this wole condition is calculating the average age in each group, (male and female)

SELECT  occupation
FROM employee_salary
group by occupation
ORDER BY AVG(salary) asc;

#practice exercises
#Among employees whose occupation contains the word "Manager" or "Director" and who earn more than $40,000, which occupations have an average salary above $60,000?

SELECT * 
FROM employee_salary;

SELECT occupation, avg(salary) as average_salary, count(distinct(employee_id)) as employee_count
FROM employee_salary
WHERE salary >40000 AND (occupation LIKE '%Director%' OR  occupation LIKE "%Manager%")
group by occupation having avg(salary)> 60000
order by avg(salary) desc;
