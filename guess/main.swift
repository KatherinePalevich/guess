import Foundation

func guessComputersAge() {
  let age = arc4random_uniform(100)

  while true {
    print("What's my age? ")
    if let guess = Int(readLine()!) {
      if guess > age {
        print("I'm younger than that")
      } else if guess < age{
        print("I'm older than that")
      } else {
        print("That's right!")
        break
      }
    } else {
      print("That's not a number!")
    }
  }
}

func guessHumansAge() {
  print("I'm gonna guess your age bwhahahahahahahahaha")
  var low = 0
  var high = 122
  while true {
    let guess = (low + high)/2
    print("Are you \(guess)?")
    let answer = readLine()
    if answer == "yes" {
      print("Yay, I did it!")
      break
    } else if answer == "higher" {
      low = guess
    } else if answer == "lower" {
      high = guess
    } else {
      print("Type 'lower', 'higher', or 'yes'")
    }
  }
}
