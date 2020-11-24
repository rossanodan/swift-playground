import UIKit

// writing functions

func printHelp() {
    let message = """
        Welcome to MyApp!
        Run this app inside a directory of images and
        MyApp will resize them all into thumbnails
    """
    
    print(message)
}

printHelp()

// accepting parameters

func square(number: Int) {
    print(number * number)
}
square(number: 8)

// returning values

func anotherSquare(number: Int) -> Int {
    return number * number
}
print(anotherSquare(number: 8))

// parameter labels

func sayHello(to name: String) {
    print("Hello \(name)!")
}
sayHello(to: "Rossano")

// the parameter is called `to name`, which means
// externally it's called `to` and internally it's called `name`

// omitting parameter labels

func greet(_ person: String) {
    print("Hello, \(person)!")
}
greet("Chiara")

func setAlarm(_ time: Int) -> Bool {
    if (time > 10) {
        return true
    } else {
        return false
    }
}

print(setAlarm(20))

// default parameters

func anotherGreet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again!")
    }
}

anotherGreet("Taylor")
anotherGreet("Taylor", nicely: false)

// variadic functions

func thirdSquare(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
thirdSquare(numbers: 1, 2, 3, 4, 5)

// writing throwing functions

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

do {
    try checkPassword("password")
    try checkPassword("password123")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

// inout parameters
// means variables can be changed inside your function, and those changes reflect in the original value outside the function
func doubleInPlace(number: inout Int) {
    number *= 2
}
var myNum = 6
doubleInPlace(number: &myNum)
print(myNum) // doubled
