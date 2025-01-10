import random
import string
from sys import breakpointhook

print("Welcome to Password Generator!")

caps_alpa = list(string.ascii_uppercase)
lower_alpha = list(string.ascii_lowercase)
special_char = list(string.punctuation)
number1 = list(string.digits)
digit = []
password = []
def passwd():
    while True:
        length = int(input("Enter the desired length of the password (8-20): "))
        if 8 <= length <= 20:
            digit.append(int(length))
            break

        else:
            print("Invalid Choice")

def caps():
    while True:
        Uppercase = input("Include the uppercase letters? (y/n) ").lower()
        if Uppercase == "y":
            password.extend(caps_alpa)
            break
        elif Uppercase == "n":
            password.extend(lower_alpha)
            break
        else:
            print("Invalid Choice")

def num():
    while True:
        number = input("Include numbers? (y/n) ").lower()
        if number == "y":
            password.extend(number1)
            break
        elif number == "n":
            break
        else:
            print("Invalid Choice")
def char():
    while True:
        characters = input("Include special characters? (y/n) ").lower()
        if characters == "y":
            password.extend(special_char)
            break
        elif characters == "n":
            break
        else:
            print("Invalid Choice")



passwd()
caps()
num()
char()

for n in digit:
    number = 0 + n
    final_password = random.choices(password, k=number)
    print(''.join(final_password))