import UIKit

// arithmetic operators

let firstScore = 24
let secondScore = 9
let totalScore = firstScore + secondScore
let difference = firstScore - secondScore

let itemPrice = 19.90
let quantity: Double = 5
// let totalCost = itemPrice * quantity - error because itemPrice is Double and quantity is Int
// quantity has to be Double let quantity: Double = 5
let totalCost = itemPrice * quantity

let salary = 1200.0 // implicit type inference
let hoursWorkedPerDay = 8
let daysWorkedPerWeek = 5
let weeksWorkedPerMonth = 4
let hoursWorked = Double(hoursWorkedPerDay * daysWorkedPerWeek * weeksWorkedPerMonth)
let payPerHour = salary / hoursWorked

// remainder of a division - useful to determine if a number is even or odd
let specialNumber = 4
let remainder = specialNumber % 2
if (remainder == 0) {
    print("Even")
} else {
    print("Odd")
}

// operator overloading
// Swift is a type-safe language so you can't do operations mixing types
let meaningOfLife = 42
let doubleMeaningOfLife = 42 + 42

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
firstHalf + secondHalf // this joins the two arrays

// compound operators
var myAge = 26
myAge -= 3

var currentYear = 2020
var pastYear = 1994
currentYear -= pastYear

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

// comparison operators
let myScore = 6
let yourScore = 12
myScore == yourScore // false
myScore != yourScore // true
myScore > yourScore // false
myScore < yourScore // true
myScore >= yourScore // false
myScore <= yourScore // true

// it works also for string because they have natural alphabetical order
let firstName = "Rossano"
let lastName = "D'Angelo"
firstName < lastName // false

// conditions

let firstNumber = 7
let secondNumber = -4
if ((firstNumber + secondNumber) % 2 == 0) {
    print("Perfect sum!")
} else {
    print("I don't know!")
}

let planet = "Earth"
if (planet == "Mars") {
    print("Martian")
} else if (planet == "Earth") {
    print("Earthling")
} else {
    print("Alien")
}

// conditions can be combined

let username = "johndoe"
let password = "123"
if (username == "johndoe" && password == "123") {
    print("Access granted")
} else if (username != "johndoe" && password == "123") {
    print("Wrong username")
} else if (username == "johndoe" && password != "123") {
    print("Wrong password")
} else {
    print("Wrong credentials")
}

let luckyNumber = 13
let guessedNumber = 2
if (guessedNumber == luckyNumber || (guessedNumber % 2 == 0)) {
    print("Lucky duck")
} else {
    print("Wrong, try again")
}

// ternary operator
let isSwift = true
let programmingSwift = isSwift ? "I am programming with Swift" : "I am not programming with Swift"

// switch statement
let weather = "sunny"

switch weather {
    case "rain":
        print("Bring an umbrella")
    case "snow":
        print("Wrap up warm")
    case "sunny":
        print("Wear sunscreen")
        fallthrough
    default:
        print("Enjoy your day!")
}

let rank = 85

switch rank {
    case 0..<50:
        print("You failed badly")
    case 50..<85:
        print("You did OK")
    default:
        print("You did great")
}
