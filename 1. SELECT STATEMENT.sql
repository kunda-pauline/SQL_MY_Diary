select * from parks_and_recreation.employee_demographics;



SELECT first_name,
 last_name,
 age,
 (age + 10)*10+10
 FROM  employee_demographics;
 
 #PEMDAS : Parathesis Exponation Multiplication,Division,Addition,Substraction. THIS IS THE ORDER THAT THE CALCULATION RUN WHEN EXECUTING THE CALCULATION
 
 #******************DISTINCT  QUERY**********
 #IT IS QUERY THAT IS USED TO SELECT THE UNIQUE VALUE FROM THE COLUMN. 
 # FOR EXAMPLE HERE I WANT TO CHECK THE GENDER I HAVE IN GENDER COLUMN

 SELECT DISTINCT gender 
 FROM employee_demographics;
 
 