import UIKit

// handling missing data

// to make a type optional
var age: Int? = nil

// unwrapping optionals

var name: String? = nil

// this process is known as unwrapping
if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}

// unwrapping with guard

// Using guard let lets you deal with
// problems at the start of your functions,
// then exit immediately

func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }
    
    print("Hello, \(unwrapped)")
}

greet(nil) // prints "You didn't provide a name!"

// force unwrapping

// You should force unwrap only when you’re sure
// it’s safe

let str = "5"
let num = Int(str)!

// nil coalescing

func username(for id: Int) -> String? {
    if id == 1 {
        return "edsheeran"
    } else {
        return nil
    }
}

let user = username(for: 15) ?? "Anonymous"

// optional chaining

// if you want to access something like a.b.c
// and b is optional, you can write a question
// mark after it to enable optional chaining: a.b?.c.

let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased()

let otherNames: [String] = []
let otherBeatle = otherNames.first?.uppercased()

// optional try

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
    print("That password is good!")
} catch {
    print("You can't use that password!")
}

// failable initializers

struct Person {
    var id: String

    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

var person = Person(id: "12345") // nil
var anotherPerson = Person(id: "123456789") // Person

// typecasting

class Animal { }
class Fish: Animal { }
class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]

for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}
// this prints Woof! twice because I have
// only two object of type Dog in the array
// pets

