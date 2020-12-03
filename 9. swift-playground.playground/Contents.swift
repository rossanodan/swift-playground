import UIKit

// struct

struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")
var football = Sport(name: "Football")

print(tennis)
print(football)

tennis.name = "Table Tennis"

print(tennis)

// computed properties

struct Sport2 {
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport."
        } else {
            return "\(name) is not an Olympic sport."
        }
    }
}

var swimming = Sport2(name: "Swimming", isOlympicSport: true)
var darts = Sport2(name: "Darts", isOlympicSport: false)

print(swimming.olympicStatus)
print(darts.olympicStatus)

// property observers

struct Progress {
    var task: String
    var completion: Int {
        didSet {
            print("\(task) is now \(completion)%")
        }
        // willSet {}
        // to take action before a property
        // changes, but rarely used
    }
}

var progress = Progress(task: "Studying Swift", completion: 0)
progress.completion = 30
progress.completion = 50
progress.completion = 80
progress.completion = 100

// methods

struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

var rome = City(population: 6000000)
print(rome.collectTaxes())

// mutating methods

struct Person {
    var name: String
    // name becomes Anonymous only when
    // makeAnonymous is called
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Rossano")
print(person.name) // prints Rossano
person.makeAnonymous()
print(person.name) // prints Anonymous

// properties and methods of strings

let string = "Do or do not, there is no try."

print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())

// properties and methods of arrays

var toys = ["Woody"]

print(toys.count)

toys.append("Buzz")

print(toys.firstIndex(of: "Buzz"))
print(toys.sorted())
toys.remove(at: 0)
print(toys)

// initializers

struct User {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
user.username = "Tom Cruise"

// referring to the current instance

struct Person2 {
    var name: String
    
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

var anotherPerson = Person2(name: "Chiara")

// lazy properties

// As a performance optimization, Swift lets
// you create some properties only when they
// are needed.

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person3 {
    var name : String
    lazy var familyTree = FamilyTree()
    
    init(name: String) {
        print("I am glad to announce \(name) was born")
        self.name = name
    }
}

var person3 = Person3(name: "Fabiano")
print(person3.familyTree) // now the init of FamilyTree is called!

struct Book {
    var title: String
    var author: String
    var availability: Int
    
    init(title: String, author: String, availability: Int) {
        self.title = title
        self.author = author
        self.availability = availability
    }
}

struct BooksCollection {
    var collection: [Book]
    
    init() {
        print("Creating the books collection empty.")
        self.collection = []
    }
    
    mutating func append(book: Book) {
        self.collection.append(book)
    }
}

struct Library {
    var name: String
    lazy var booksCollection = BooksCollection()
    
    init(name: String) {
        self.name = name
    }
    
    mutating func addToCollection(book: Book) {
        self.booksCollection.append(book: book)
    }
}

let book1 = Book(title: "I Promessi Sposi", author: "A. Manzoni", availability: 4)
let book2 = Book(title: "La Divina Commedia", author: "Dante Alighieri", availability: 22)
var library = Library(name: "Public Library")

print(library.name) // prints the library name but doesn't print "Creating the books collection empty."

library.addToCollection(book: book1)
library.addToCollection(book: book2)

// "Creating the books collection empty." is printed because I added two books so I used booksCollection!

// static properties and methods

struct Student {
    static var classSize = 0
    var name: String
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

let ed = Student(name: "Ed")
let taylor = Student(name: "Taylor")
let rossano = Student(name: "Rossano")
let john = Student(name: "John")

print(Student.classSize)

// access control

struct Employee {
    private var id: String
    var name: String
    
    init(id: String, name: String) {
        self.id = id
        self.name = name
    }
    
    // id is not accessible from outside!
    // name is accessible from outside
    
    func identify() -> String {
        return "The employee ID is \(id)"
    }
}

var employee = Employee(id: "123abc", name: "Rossano")
// print(employee.id) wrong!!!
print(employee.identify())
