from colorama import Fore, Style, init

init(autoreset=True)  # Initialize colorama and reset colors after each print

print(Fore.RED + "This is red text")
print(Fore.GREEN + "This is green text")
print(Style.BRIGHT + Fore.BLUE + "This is bright blue text")
print(Style.RESET_ALL + "This is normal text again")