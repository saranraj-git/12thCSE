import csv
with open('/Users/saran/PycharmProjects/12thCSE/test.csv','w') as f:
    w = csv.writer(f)
    n = 1
    while(n<=3):
        name = input("Player Name?:")
        score = int(input("Score:"))
        w.writerow([name,score])
        n+=1

print("Player File Created")
f.close()
searchname=input('Enter the name to be searched')
f=open('/Users/saran/PycharmProjects/12thCSE/test.csv','r')
reader=csv.reader(f)
lst=[]
for row in reader:
    lst.append(row)
q=0

for row in lst:
    if searchname in row:
        print(row)
        q+=1
    if(q==0):
        print("String not found")
f.close()

'''
Player Name?:Jana
Score:100
Player Name?:Prasanna
Score:150
Player Name?:Saran
Score:100
Player File Created
Enter the name to be searchedPrasanna
String not found
['Prasanna', '150']

Process finished with exit code 0

'''