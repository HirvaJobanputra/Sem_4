def factorial(n):
    try:
        if(n<0):
            return "Undefined"
        elif(n==1 or n==0):
            return 1
        else:
            fact=1
            for i in range(2,n+1):
                fact=fact*i
            return fact
    except ValueError as e:
        return f"Error: {e}"
    except TypeError:
        return "Error: Input must be an integer."


