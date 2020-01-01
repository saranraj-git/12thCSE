import matplotlib.pyplot as plt
marks=[]
i=0
subjects = ["Tamil", "English", "Maths", "Science", "Social"]
while i<5:
    marks.append(int(input("Enter Mark = ")))
    i+=1
for j in range(len(marks)):
    print("{}.{} Mark = {}".format(j+1, subjects[j],marks[j]))
plt.pie (marks, labels = subjects, autopct = "%.2f ")
plt.axes().set_aspect ("equal")
plt.show()

'''
output:
Enter Mark = 100
Enter Mark = 60
Enter Mark = 50
Enter Mark = 40
Enter Mark = 20
1.Tamil Mark = 100
2.English Mark = 60
3.Maths Mark = 50
4.Science Mark = 40
5.Social Mark = 20


'''