//-- Rock Paper Scissors --//
//Bismillah - AbubakarQ

// get player choice
func getUserChoice(userInput: String) -> String {
  // if statments to check value inputed is correct
  if userInput == "rock" || userInput == "paper" || userInput == "scissors" {
    return userInput
    // fail statment to check for false input
  } else {
    return "You can only enter rock, paper, or scissors. Try Again."
  }
} // function created

// Testing Function
//print(getUserChoice(userInput: "rock"))

// Computer Choice Function
func getComputerChoice() -> String {
  let randomNumber = Int.random(in: 0...2)
  switch randomNumber {
    case 0: 
      return "rock"
    case 1: 
      return "paper"
    case 2: 
      return "scissors"
    default: 
      return "Something went wrong..."
  }
} // function created 

// Testing computer's choice
//print(getComputerChoice())

// Function for determining winner
func determineWinner( _ userChoice: String, _ compChoice: String) -> String {
  // initilizing constant 'decision'
  var decision: String = "It's a tie";
  

  switch userChoice {
    case "rock":
      if compChoice == "paper" {
        decision = "The computer won!"
      } else if compChoice == "scissors" {
        decision = "The user won!"
      }

    case "paper":
      if compChoice == "rock" {
        decision = "The user won"
      } else if compChoice == "scissors" {
        decision = "The computer won!"
      }

    case "scissors":
      if compChoice == "rock" {
        decision = "The computer won"
      } else if compChoice == "paper" {
        decision = "The user won"
      }

    default: 
      print("Something went wrong...")
  }

  // Problem is here. Outside of the case statment, you must return a string OUTSIDE the case. 
  return decision
} // function created 

let userChoice = getUserChoice(userInput: "paper")
let compChoice = getComputerChoice()

print("You threw -\(userChoice)-")
print("The computer threw -\(compChoice)-")
print(determineWinner(userChoice, compChoice))

// end of project - completed at 4:23 AM Tue, August 17th, 2021



