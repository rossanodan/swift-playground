/*
 * Day 2
 * Arrays
 * Dictionaries
 * Sets
 * Enums
*/
import UIKit

// Arrays
var friends: [String] = ["Rachel", "Monica", "Chandler"]
friends.append("Phoebe")
friends.append("Joey")
friends.append("Ross")

print(friends)

var magicNumbers = [1, 2, 3]

print(magicNumbers.count)

// Sets
let set = Set(["Python", "JavaScript", "Java", "Swift", "Python"])

print(set) // Swift prints only once - no duplicates in sets!!

let ingredients: Set = ["cocoa beans", "sugar", "cocoa butter", "salt"]
if ingredients.contains("sugar") {
    print("No thanks, too sweet.")
}

var lineup: Set = ["Silvestri", "Smalling", "De Silvestri", "Milinkovic Savic", "Ronaldo"]
print("Lineup \(lineup)")
lineup.removeFirst()
print("Lineup after removeFirst() \(lineup)")
lineup.remove("Smalling")
print("Lineup after remove Smalling \(lineup)")
lineup.removeAll()
print("Lineup after removeAll() \(lineup)")

// Tuples
let address = (house: 555, street: "Taylor Swift Avenue", city: "London")
print(address)

var squad = (
    name: "Juventus FC",
    country: "Italy",
    players: Set(["Buffon", "De Ligt", "Cuadrado", "Ronaldo"])
)
print(squad)
