struct Area {

    let lenght: Int
    let width: Int 

    var area: Int {
        get {
            return (lenght * width)
        }
    }
    
}

let area1 = Area(lenght: 10, width: 10)
let area2 = Area(lenght: 60, width: 44)
print(area1.area)
print(area2.area)

// As you can see by using get keyword we can I calculated value without making seperate function to doing this 

// Now let's understand set scenario

struct Person {
    private var _height: Int = 0  // Backing storage for height

    var height: Int {
        get {
            print("Person height using get keyword is \(_height)")
            return _height
        }
        set (newHeight) {
            _height = 220 * newHeight
        }
    }

    init(height: Int) {
        self.height = height  // Using setter to assign the value
    }
}

let person = Person(height: 10)
print(person.height)  // This will trigger the getter
