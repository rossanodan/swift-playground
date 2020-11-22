import UIKit

var integer: Int = 100
var decimal: Double = 12.5
integer = Int(decimal) // explicitly conversion

// operations with mixed types

let hourlyRate: Double = 19.5
let hoursWorked: Int = 10
let totalCost: Double = hourlyRate * Double(hoursWorked) // in Swift you can’t apply the * operator to mixed types

// type inference

let integer2 = 42
let double = 3.14159

// Swift can deduce the type of the variable by the value assigned to it

let actuallyDouble = 3 as Double

// Strings and Characters

let characterA: Character = "a"
let characterDog: Character = "🐶"
let stringDog = "Dog" // type inferred

// Concatenation vs Interpolation

var message = "Hello" + " my name is "
let name = "Rossano"
message += name

let name2 = "John Doe"
let message2 = "Hello, my name is \(name2)"

// multi-line strings

var bigString = """
This is a string
written on multiple
lines
"""
print(bigString)

// Tuples

let coordinates: (Int, Int) = (2, 3)
let x1 = coordinates.0
let y1 = coordinates.1
print(x1, y1)

let coordinatesNamed = (x: 2, y: 3) // Inferred to be of type (x: Int, y: Int)
let x2 = coordinatesNamed.x
let y2 = coordinatesNamed.y
print(x2, y2)

let coordinates3D = (x: 2, y: 3, z: 1)
let (x3, y3, z3) = coordinates3D
