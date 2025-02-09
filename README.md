# Overview
In this program, I have created a movie theater employee database in MySQL Workbench using SQL. The database stores various pieces of information about the employees of Starlight Cinema, including job positions and training levels for Team Member employees. Using Python in VSCode, the program retrieves Team Member employees from the database and lists who needs to be concessions trained. The purpose of the code is to demonstrate the integration of database management and Python programming for a real-world application. 

To run the program, run the Python file (starlight_cinema.py) in Visual Studio Code with access to the SQL database file. The program will then retrieve the list of Team Member employees who need concessions training.

[Software Demo Video](http://youtube.link.goes.here)

# Relational Database

I am using a MySQL relational database with three tables.

The Positions table features information on the different job roles at Starlight Cinema. They include General Manager, Manager, Team Leader, and Team Member. 

The Employees table contains employee information, such as contact information and their job position. 

The Team Member Training table tracks which of the Team Member employees are trained in Usher, Box, Door, and Concessions. 

# Development Environment

The program is written in Python through the editor Visual Studio Code. I created my database with MySQL Workbench. I used the mysql-connector-python Python library to connect my code in Python with MySQL.

# Useful Websites

- [StackOverflow](stackoverflow.com)
- [PYnative](https://pynative.com)
- [W3Schools](https://www.w3schools.com/sql/)
- Various other websites, past personal projects, past lessons, and AI were used for troubleshooting and learning

# Future Work

- Add more prompts in Python to pull data with
- Improve the appearance of tables within MySQL 
- Expand the database to include employees from multiple franchise locations
