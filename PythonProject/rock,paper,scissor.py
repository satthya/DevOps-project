import random

print("Welcome to Rock, Paper, Scissors!")

list = ["rock", "paper", "scissors"]

computer_score = []
user_score = []

while True:
    user = input("Enter your choice (rock, paper, scissors): ").lower()
    computer = random.choice(list)
    print(computer)
    score = 0


    if user == "rock":
        if user == "rock" and computer == "rock":
            print(f"computer choose {computer}. draw!")
        elif user == "rock" and computer == "paper":
            print(f"computer choose {computer}. You loose!")
            score += 1
            computer_score.append(score)
        else:
            print(f"computer choose {computer}. You won!")
            score += 1
            user_score.append(score)
            play_again = input("Do you want to play again? y/n").lower()
            if play_again == "y":
                continue
            else:
                break
    elif user == "paper":
        if user == "paper" and computer == "paper":
            print(f"computer choose {computer}. draw!")
        elif user == "paper" and computer == "scissors":
            print(f"computer choose {computer}. You loose!")
            score += 1
            computer_score.append(score)
        else:
            print(f"computer choose {computer}. You won!")
            score += 1
            user_score.append(score)
            play_again = input("Do you want to play again? y/n").lower()
            if play_again == "y":
                continue
            else:
                break
    elif user == "scissors":
        if user == "scissors" and computer == "scissors":
            print(f"computer choose {computer}. draw!")
        elif user == "scissors" and computer == "rock":
            print(f"computer choose {computer}. You loose!")
            score += 1
            computer_score.append(score)
        else:
            print(f"computer choose {computer}. You won!")
            score += 1
            user_score.append(score)
            play_again = input("Do you want to play again? y/n").lower()
            if play_again == "y":
                continue
            else:
                break
    else:
        print("Invalid Choice")
total_user = sum(user_score)
total_computer = sum(computer_score)
print("")
print(f"final score:\n user: {total_user}\n computer: {total_computer} ")

print("Thank you! you have choose to exit. ByeBye!")