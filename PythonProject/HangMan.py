import random

animal_list = ["tiger", "lion", "monkey"]

lives = 6

animal = random.choice(animal_list)

placeholder = ""
for i in range(len(animal)):
    placeholder += "_"
print(placeholder)

guess = []
letter1 = []
game_over = False

while not game_over:
    user = input("Kindly guess a letter :- ").lower()
    guess.append(user)

    display = ""

    for letter in animal:
        if letter == user:
            display += letter
            letter1.append(user)
        elif letter in letter1:
            display += letter
        else:
            display += "_"

    print(display)

    if user not in animal:
        lives -= 1
        if lives == 0:
            game_over = True
            print("You lose.")

    if "_" not in display:
        game_over = True
        print("Winner!")