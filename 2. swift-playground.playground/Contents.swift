import UIKit

var name = "Rossano"
var lastname = "D'Angelo"

print("My name is \(name) \(lastname)")

var introduction = """
Hello there! \
I am Rossano D'Angelo \
And I am 26 years old.
"""

print(introduction)

var age = 26
var weight = 100.0
var height = 170

print(age)
print(weight)
print(height)

var introduction2 = """
Hello there! \
I am \(name) \(lastname) \
And I am \(age) years old.
My weight is \(weight) and my height is \(height)
"""

print(introduction2)

let pi = 3.14

print("Pi \(pi) can't be changed, it'a constant!")

var id: Int = 1
var orderNo: String = "3458693"
var description: String = "iPhone 12 Pro Max"
var unitPrice: Double = 1199.0
var total: Double = 1199.0
var quantity: Int = 1

var invoice = """
Product: \(description) \
Unit price: \(unitPrice)
Total: \(total)
Order number: \(orderNo)
"""

print(invoice)

// ************************ //

typealias Point = (x: Int, y: Int)
typealias Square = (a: Point, b: Point, c: Point, d: Point)

var a: Point = (0, 0)
var b: Point = (5, 0)
var c: Point = (5, 5)
var d: Point = (0, 5)

var square = (a: a, b: b, c: c, d: d)
print(square)
