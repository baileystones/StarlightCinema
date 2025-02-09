# Overview:
# -In this program, I have created a movie theater employee database in MySQL Workbench using SQL. It includes various pieces of information about the employees, as well as the training
# level of the Team Member employees. Using python in VSCode, we are pulling Team Member employees from that database and listing who needs to be concessions trained. 
# The purpose of the code is to demonstrate the integration of an SQL databse with commands in Python. 
# To use the program, simply run the Python file in Visual Studio Code. 
#
#[Software Demo Video](http://youtube.link.goes.here)
#
# Relational Database:
# -I am using
# Development Environment:
# - I 
#
#{Describe the programming language that you used and any libraries.}
#
# Useful Websites:
#- [Web Site Name](http://url.link.goes.here)
#- [Web Site Name](http://url.link.goes.here)
#
# Future Work:
#
# -I want to add more prompts in Python to pull data with. 
# -I want to clean up the appearance of the tables within MySQL itself. 
# -I would like to create a bigger database with employees from various franchise locations. 

import mysql.connector

# Establishing connection to MySQL database
conn = mysql.connector.connect(
    host="localhost",
    user="root", 
    password="password",  
    database="StarlightCinema"  
)

cursor = conn.cursor()

# Function for Team Members that need to be concessions trained
def get_tm_need_concessions():
    cursor.execute("""
    SELECT e.employee_id, e.first_name, e.last_name
    FROM employees e
    JOIN team_member_training t ON e.employee_id = t.employee_id
    WHERE e.position_id = 4  -- Team Member
    AND t.trained_concessions = FALSE;  -- Not concessions trained
    """)
    
    results = cursor.fetchall()
    
    print("\nThe holiday busy season is approaching fast and we need more employees to be concessions trained.")
    print("The following Team Members need concessions training:\n")
    for row in results:
        print(f"{row[1]} {row[2]} -> ID: {row[0]}")


# Running the function    
get_tm_need_concessions()

# Closing the connection
cursor.close()
conn.close()