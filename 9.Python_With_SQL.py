import sqlite3
connection = sqlite3.connect("info333.db")
cursor = connection.cursor()
#cursor.execute("DROP Table student")
cursor.execute("create table student(name, age)")
print("Enter 10 students names and their ages respectively:")
for i in range(3):
    who =[input("Enter Name:")]
    age =[int(input("Enter Age:"))]
    n =len(who)
    for i in range(n):
        cursor.execute("insert into student values (?, ?)", (who[i],age[i]))
cursor.execute("select * from student order by age desc")
print("Displaying All the Records From student Table in Descending order of age")
print (*cursor.fetchall(),sep='\n' )

'''
/usr/local/bin/python3.8 /Users/saran/PycharmProjects/12thCSE/9.Python_With_SQL.py
Enter 10 students names and their ages respectively:
Enter Name:Jana
Enter Age:19
Enter Name:Saran
Enter Age:32
Enter Name:gandhi
Enter Age:22
Displaying All the Records From student Table in Descending order of age
('Saran', 32)
('gandhi', 22)
('Jana', 19)
'''