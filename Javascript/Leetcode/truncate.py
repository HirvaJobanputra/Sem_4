list=[]
s=input("Enter a string:")
sList=s.split(" ")
print(sList)
k=int(input("Enter the length:"))
for i in range(k):
    list.append(sList[i])
print(list)    
