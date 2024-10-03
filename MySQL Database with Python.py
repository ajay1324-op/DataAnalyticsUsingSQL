#MySQL Database with Python
import mysql.connector
mydb=mysql.connector.connect(host="127.0.0.1",port="3306",user="root",password="Ajay2004",database="project")
cursor=mydb.cursor()
selectquery= "select * from salaries"
cursor.execute(selectquery)
records=cursor.fetchall()
print ("Number of employees in the company",cursor.rowcount)
print("Employee/'/s details")

for row in records:
    print("Id:",row[0])
    print("EmployeeName:",row[1])
    print("JobTitle:",row[2])
    print("BasePay:",row[3])
    print("OverTimePay:",row[4])
    print("OtherPay:",row[5])
    print("TotalPay:",row[6])
    print("TotalPayBenefits:",row[7])
    print("Year:",row[8])
    print("Agency:",row[9])
    print()

cursor.close()
mydb.close()