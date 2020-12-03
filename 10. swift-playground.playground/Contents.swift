import UIKit

// creating classes

/*
Classes and structs give Swift developers the ability to create custom, complex types with properties and methods, but they have five important differences:

- Classes do not come with synthesized memberwise initializers.
- One class can be built upon (“inherit from”) another class, gaining its properties and methods.
- Copies of structs are always unique, whereas copies of classes actually point to the same shared data.
- Classes have deinitializers, which are methods that are called when an instance of the class is destroyed, but structs do not.
- Variable properties in constant classes can be modified freely, but variable properties in constant structs cannot.
*/

class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    func makeNoise() {
        print("Woof!")
    }
}

// class inheritance
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
    
    // overriding methods
    override func makeNoise() {
        print("Yip!")
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")
poppy.makeNoise()

// final classes

// when you declare a class as being final, no other class can
// inherit from it.

final class Cat {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

/*
class Persian: Cat {
    ...
}

Can't do it because Cat class is final!
*/

// copying objects

// When you copy a class, both the original
// and the copy point to the same thing, so
// changing one does change the other.

class Singer {
    var name = "Ed Sheeran"
}
var singer = Singer()
var singerCopy = singer
singerCopy.name = "Michael Buble'"
print("singerCopy is \(singerCopy.name)")
print("singer is \(singer.name)")

struct Singer2 {
    var name = "Ed Sheeran"
}
var singer2 = Singer2()
var singerCopy2 = singer2
singerCopy2.name = "Michael Buble'"
print("singerCopy2 is \(singerCopy2.name)")
print("singer2 is \(singer2.name)")

// deinitializers

class Smartphone {
    var brand: String
    var model: String
    
    init(brand: String, model: String) {
        self.brand = brand
        self.model = model
    }
    
    func printSmartphone() {
        print("The smartphone is: \(brand) \(model)")
    }
    
    deinit {
        print("\(brand) \(model) is destroyed!")
    }
}

for _ in 1...3 {
    let smartphone = Smartphone(brand: "Apple", model: "iPhone 12")
    smartphone.printSmartphone()
}

// deinit method is called when the instance is destroyed

// mutability

class Player {
    var name = "Zlatan Ibrahimovic"
}

let player = Player()
player.name = "Romelu Lukaku"
print(player.name)

struct Player2 {
    var name = "Lorenzo Insigne"
}

let player2 = Player2()
// player2.name = ""
// can't do this becase player2 is a constant!
// this is a limitation on struct because struct itself is a constant

