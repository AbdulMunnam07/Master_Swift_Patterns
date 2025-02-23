class Car {
    var carPrice: Int = 10000 {
        didSet {
            showMessage()
        }
        willSet {
            print("Are you sure you want to increase car price ??")
        }
    }
    
    func carName(name: String) {
        print("This car name is \(name)")
    }
    
    func carModel(model: Int) {
        print("This car model is \(model)")
    }
    
    func increaseCarPrice(price: Int) {
        carPrice += price
    }
    
    func showMessage() {
        print("***** You have increase car price ***** \(carPrice)")
    }
}

let car = Car()
print(car.carName(name: "Audi"))
print(car.increaseCarPrice(price: 20000))


// have you notice how didSet or WillSetWorks?

// if not then let me explain

// didSet method is execute only when its varible value get updated
// willSet method is execute only when its will be set on variable it mean it execute before just setting value in it


// you can play much as you want to understand this concept 
// it was just a demo for explaining this concept to myself