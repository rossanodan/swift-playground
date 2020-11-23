import UIKit

var height = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
print(height)

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]
print(favoriteIceCream["Paul"])
print(favoriteIceCream["Charlotte"])
print(favoriteIceCream["Charlotte", default: "Unknown"])

// Arrays, Sets and Dictionaries are called collections
// Create an empty collection

var ranks = Array<Int>()
var results = [Int]()

var words = Set<String>()
var numbers = Set<Int>()

var scores = Dictionary<String, Int>()
var teams = [String: String]()

// Enum

enum Result {
    case Success
    case Failure
}

let result = Result.Success

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}
let talking = Activity.talking(topic: "football")
print(talking)

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}
print(Planet.mercury)

enum SocialMedia {
    case Facebook
    case Twitter
    case Reddit
}
print("People like posting on \(SocialMedia.Facebook)")
