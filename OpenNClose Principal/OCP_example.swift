// Open close principal?

// "A class should be open for extensions but close for modification"

// What does it mean??

// Let me explain
// It means:
// -> You should be add new functionality to the class without changing its existing code
// -> The original class sould not be modified whenever new features are added

// Now let's explain it with the help of example

class PaymentMethods {
    func processPayment(type: String) {
        if type == "Jazzcash" {
            print("Payment done through jazzcash!")
        } else if type == "Easypaisa" {
            print("Payment done thorught easypaisa!!")
            
        }
    }
}

// see the above function and think about what if you have to add new payment method in feature like "sadaPay"?
// then what will you do?
// add new "else if" case right ?
// But what if you have to add more methods then you will add mantually ? - so it's break open closed principal 

// Now let's refactor the above code using Protocols and Polymorphism

protocol Payment {
    func processPayment(type: String) 
}

class ProcessJCPayment: Payment {

    func processPayment(type: String) {
        print("Payment done through jazzcash!")
    }
}

class ProcessEPPayment: Payment {
    func processPayment(type: String) {
        print("Payment done thorught easypaisa!!")
    }
}

class PaymentService: Payment {
    func madeTransition(amount: String, payment: Payment) {
        print("\(amount) has been transfer by type: \(type)")
    }
}

let instance = PaymentService()
let jazzcash = ProcessJCPayment()
instance.madeTransition(amount: 1000, jazzcash)

// Now think how to add new method ?

// you can add by simply adding new class

class ProcessBankPayment: Payment {
    func processPayment(type: String) {
        print("Payment done thorught bank account!!")
    }
}

//✅ No modification to the existing classes
//✅ The system is Open for Extension
//✅ Closed for Modification




