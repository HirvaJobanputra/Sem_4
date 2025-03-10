words=[]
s=input("Enter a string:")
size=int(input("Enter the length:"))
for i in range(size):
    word=input("Enter list of words:")
    words.append(word)

newS="".join(words)
if newS==s:
    print("The string is a prefix!!")
else:   
    print("The string is not a prefix!!")
