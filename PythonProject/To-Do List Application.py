print("Welcome to my To-Do List!")

task_1 = []
def to_do():
    while True:
        print("1. Add Task")
        print("2. View Task")
        print("3. Remove Task")
        print("4. Exit")

        user = input("Choose an option (1-4): ")

        if user == "1":
            task = input("Kindly add your task: ")
            task_1.append(task)
        elif user == "2":
            for i, list in enumerate(task_1):
                print(f"{i+1} : {list}")
                print(("-")*30)
        elif user == "3":
            choice = input("Kindly enter the task you would like to remove: ")
            if choice in task_1:
                task_1.remove(choice)
            else:
                print("The task not in list")
                print(("-") * 30)
        elif user == "4":
            print("You have chosen exit. Good Bye!")
            break

to_do()