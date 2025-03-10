## input = "aaabbb"
## output = "a3b3"
newS=str("")
count=0 
s=input("Enter a string:")
length=len(s)
for i in range(length):
    char = s[i]
    # print(char)
    for j in range(i+1,length):
        if(char==s[j]):
            count+=1
        newS=newS+char+str(count)
print(newS)