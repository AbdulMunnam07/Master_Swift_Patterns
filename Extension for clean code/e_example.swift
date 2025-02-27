// today let's walk through swift extension 

// So let get stated 

// extension is a greate feature/keyword in swift which help us to use extension keyword, in which we write our logic and then use it in out view controller 

// Here is its example:

// let suppose we have write a code in which we have saving user email in core data or firebase but before saving email we have to check this email is it correct email or not then at these scenarios extension help us a lot

extension String {

    func checkEmail() -> Bool {
        return self.contains("@")
    }
}

print("example12@gmail.com".checkEmail()) // output: true


// we can also modify it more like 
extension String {

    func checkEmail() -> Bool {
        return self.contains("@") && self.contains(".com")
    }
}

print("example12@gmail.om".checkEmail()) // output: false 

// now let take user password validation example 
extension String {
    func checkPassword() -> Bool {
        guard self.count > 5 else { return false }  // Ensure password length > 5
        
        let specialCharacters = CharacterSet(charactersIn: "!@#$%^&*")
        let digits = CharacterSet.decimalDigits
        
        // Check if the string contains at least one special character and one digit
        return self.rangeOfCharacter(from: specialCharacters) != nil && 
               self.rangeOfCharacter(from: digits) != nil
    }
}

print("ios36@".checkPassword())  // true
print("password".checkPassword())  // false
print("123456".checkPassword())  // false
print("ios@".checkPassword())  // false
