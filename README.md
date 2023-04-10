# SQL Employee Data
Pewlett Hackard (a fictional company) has just hired you and the first project you are asked to do is get info on people who worked at the company during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files (inluded in the data folder).

For this project, you’ll first create an ERD (layout) of how the tables are connected using primary and foreign keys.

<img width="620" alt="employee data" src="https://user-images.githubusercontent.com/111451303/231011529-9160e2df-3a68-4892-b992-43d1981f66c3.png">

Then, you'll import the CSV files into a SQL database and answer questions posed by Pewlett Hackard leadership by querying the data.

# Getting Started
The program used to create the ERD was QuickDBD.
The analysis was done using postgres and Jupyter Notebook.

# Results
The total amount of unique records in the data was just over 300,000. Using these records and knowledge of SQL, the table was widdled down to answer specific questions about the records. The list below shows the questions and the amount of records (in parentheses) for each one that satisified the requirements. The SQL prompts used to get these outputs are included in the 'EmployeeSQL' folder.

List the employee number, last name, first name, sex, and salary of each employee (300,042)

<img width="302" alt="emp data question 1" src="https://user-images.githubusercontent.com/111451303/231016780-7a294445-def3-4a7f-8792-dc802c7aba99.png">

List the first name, last name, and hire date for the employees who were hired in 1986. (36,150)

<img width="210" alt="emp data question 2" src="https://user-images.githubusercontent.com/111451303/231016808-9b2433b9-ae49-4417-a9be-06bb309abda5.png">

List the manager of each department along with their department number, department name, employee number, last name, and first name. (48)

<img width="328" alt="emp data question 3" src="https://user-images.githubusercontent.com/111451303/231016826-2e86f75d-0a77-4b42-a000-cd5af6a3d52c.png">

List the department number for each employee along with that employee’s employee number, last name, first name, and department name. (331,603 *some employees were in multiple departments)

<img width="334" alt="emp data question 4" src="https://user-images.githubusercontent.com/111451303/231016860-5abd2b72-1cfb-4e4a-b8ed-140337bda489.png">

List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B. (20)

<img width="216" alt="emp data question 5" src="https://user-images.githubusercontent.com/111451303/231016896-fa807245-b731-41b0-a16a-0bdfd501d48f.png">

List each employee in the Sales department, including their employee number, last name, and first name. (52,245)

<img width="283" alt="emp data question 6" src="https://user-images.githubusercontent.com/111451303/231016931-14215401-6c46-4b7a-b4d6-4c3779f327dc.png">

List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name. (137,952)

<img width="286" alt="emp data question 7" src="https://user-images.githubusercontent.com/111451303/231016970-e47a5d43-8643-4d04-b1b8-fd236e76aeeb.png">

List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name). (1,638)

<img width="135" alt="emp data question 8" src="https://user-images.githubusercontent.com/111451303/231016991-35b27612-e728-455f-ad33-10298053f802.png">

# Summary
