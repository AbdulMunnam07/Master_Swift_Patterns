// Welcome to my file :)

// Understand Protocol oriented Programming 

// Define protocol
protocol Laptop {
    func color()
    func size()
    func prize()
}

// Define class and inherit Laptop protocol
class Dell: Laptop {
    func color() {
        print("Dell laptop has black color")
    }
    
    func size() {
        print("My Dell laptop has size 14inch")
    }
    
    func prize() {
        print("My Dell laptop has prize 100k")
    }
}

class Lenovo: Laptop {
    func color() {
        print("Lenovo laptop has gray color")
    }
    
    func size() {
        print("My Lenovo laptop has size 15inch")
    }
    
    func prize() {
        print("My Lenovo laptop has prize 120k")
    }
}

// Define class and inherit Laptop protocol
class Hp: Laptop {
    func color() {
        print("Hp laptop has red color")
    }
    
    func size() {
        print("My Hp laptop has size 13inch")
    }
    
    func prize() {
        print("My Hp laptop has prize 140k")
    }
}

// Not let's define class for usage 
class Person {
    func usedLaptop(laptop: Laptop, name: String) {
        print("\(name) usses \(laptop) Laptop")
    }
}


let dellInstace = Dell()
let LenovoInstace = Lenovo()
let HpInstace = Hp()
let person = Person()


print(HpInstace.color())
print(person.usedLaptop(laptop: HpInstace, name: "Abdul Munnam"))
print(person.usedLaptop(laptop: HpInstace, name: "Abdul Munnam"))



// As you can see in the above code, this is how protocols help us for using functions as we need :)