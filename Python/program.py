def save_cur_file(filename="program.txt"):
    try:
        with open(__file__,"r")as file:
            with open("program.txt","w") as fileW:
                fileW.write(file.read())
    except FileNotFoundError:
        print(f"Error: Script file '{__file__}' not found.")
    except IOError as e:
        print(f"Error saving program: {e}")
save_cur_file()
