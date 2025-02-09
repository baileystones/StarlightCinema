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