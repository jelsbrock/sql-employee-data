# SQL Employee Data
Pewlett Hackard (a fictional company) has just hired you and the first project you are asked to do is get info on people who worked at the company during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files (inluded in the data folder).

For this project, you’ll first create an ERD (layout) of how the tables are connected using primary and foreign keys.

<img width="620" alt="employee data" src="https://user-images.githubusercontent.com/111451303/231011529-9160e2df-3a68-4892-b992-43d1981f66c3.png">

Then, you'll import the CSV files into a SQL database and answer questions posed by Pewlett Hackard leadership by querying the data.

# Getting Started
The program used to create the ERD was QuickDBD.
The analysis was done using postgres and Jupyter Notebook.

# Results
The total amount of records in the data was just over 300,000. Using the main table and knowledge of SQL, the table was widdled down to answer specific questions about the records. The list below shows the questions and the amount of records (in parentheses) for each one that satisified the requirements.

List the employee number, last name, first name, sex, and salary of each employee (300,042)

List the first name, last name, and hire date for the employees who were hired in 1986. (36,150)

List the manager of each department along with their department number, department name, employee number, last name, and first name. (

List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

List each employee in the Sales department, including their employee number, last name, and first name.

List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

# Summary
