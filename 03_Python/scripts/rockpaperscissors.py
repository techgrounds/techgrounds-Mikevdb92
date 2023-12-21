import random

playerScore = 0
computerScore = 0
computerMove = ""
playerMove = ""

# Func valid move check
def validMove():
    global playerMove
    playerMove = input("Rock, paper or scissors?\n")
    validMoves = ["r", "rock", "p", "paper", "s", "scissors"]
    if playerMove in validMoves:
        pcMove()
    else:
        print("Unvalid move detected! ")
        validMove()
        
# func create computer move
def pcMove():
    global computerMove
    x = random.randint(1,3) - 1
    moves = ["rock", "paper", "scissors"]
    computerMove = moves[x]
 
# func win check
def winCheck(playerMove):
    global computerScore, playerScore, playerName

    #player picked rock
    if playerMove == "rock" or playerMove == "r":
        if computerMove == "paper":
            print(playerName + "s rock got destroyed by computers paper!")
            computerScore += 1

        elif computerMove == "scissors":
            print(playerName + "s rock destroyed Computers scissors!")
            playerScore += 1
        
        else:
            print(playerName + "s rock rolled away with Computers rock")

    #player picked paper
    elif playerMove == "paper" or playerMove == "p":
        if computerMove == "scissors":
            print(playerName + "s paper got destroyed by computers scissors!")
            computerScore += 1

        elif computerMove == "rock":
            print(playerName + "s paper destroyed Computers rock!")
            playerScore += 1
        
        else:
            print(playerName + "s paper flew away with Computers paper")

    #player picked scissors
    else:
        if computerMove == "rock":
            print(playerName +"s scissors got destroyed by computers rock!")
            computerScore += 1
            
        elif computerMove == "paper":
            print(playerName +"s scissors destroyed Computers paper!")
            playerScore += 1
        
        else:
            print(playerName +"s scissors ran away with Computers scissors")

# func scoreTracker
def score():
    global playerName
    print("Current score:   " + playerName +" " + str(playerScore) + " - " + str(computerScore) + " Computer")

def game():
    validMove()
    winCheck(playerMove)
    score()    
    
# Rock, Paper, Scissors
print("Welcome to Rock, Paper, Scissors!")
playerName = input("Who is gonna try to beat the computer today?\n")
rules = input("Do you want to know the rules of this game? (yes or no)\n")
if rules == "yes":
    print("This is the classic game Rock, Paper Scissors. Where Rock beats Scissors, Scissors beats Paper and Paper beats Rock. Best out of 5")
    print("Every turn the player can choose to use Rock, Paper or Scissors. To do this the player can type r, p, or s, or rock, paper or scissors. \nGood luck!")
else:
    print("Game starting, good luck!")

while True:
    if playerScore == 3:
        print("Well played " + playerName + "! You've beaten the computer!")
        exit()
    elif computerScore == 3:
        print("The computer has won.")
        exit()
    else:
        game()
        







