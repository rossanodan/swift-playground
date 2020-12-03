import UIKit

// basic closure

let driving = {
    print("I'm driving in my car")
}
driving()

// accepting parameters in a closure

let swimming = { (place: String) in
    print("I am swimming in \(place)!")
}
swimming("Adriatic Sea")

// returning values from a closure

let drivingWithReturn = {
    (place: String) -> String in return "I'm driving to \(place) in my car!"
}
let message = drivingWithReturn("London")
print(message)

// closures as parameters

let walking = {
    print("I am walking by myself!")
}

func travel(action: () -> Void) {
    print("I'm getting ready to go")
    action()
    print("I arrived!")
}
travel(action: walking)

// using closures as parameters when they accept parameters

func anotherTravel(action: (String) -> Void) {
    print("I'm getting ready to go!")
    action("London")
    print("I arrived!")
}
anotherTravel { (place: String) in
    print("I'm going to \(place) in my car")
}

// using closures as parameters when they return values

func anotherTravel2(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}
anotherTravel2 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

// closures with multiple parameters

func myTravel(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived")
}

myTravel {
    "I'm going to \($0) at \($1) miles per hour"
}

// returning closures from functions

func heyTravel() -> (String) -> (Void) {
    return {
        print("I'm going to \($0)")
    }
}

let result = heyTravel()
result("London")

// capturing values

func travel2() -> (String) -> (Void) {
    var counter = 1
    
    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}
let result2 = travel2()
result2("London")
result2("London")
result2("London")

