// Today let's think some logic about undo and redo functionality 

// let's image scenario at which we have to work 

/* Suppose we've 2 arrays
- array1 (to keep store numbers)
- arrray2 (to keep store strings)

You have to inserting some numbers in array1 & inserting some strings in array2 
And you've two funtions increment and decrement to perform undo redo functionality 

- Increment and decrement functions that help to remove the numbers or strings from array1 and array2 
- For Example:
Whenever you click Increase, the values (number or string) should increase in a specific sequence, e.g., Number → Number → String → Number → ...
Whenever you click Decrease, it should reverse the same sequence in which items were previously increased.

Let's write logic of it in swift */

var array1: [Int] = []
var array2: [String] = []

var array1_Index = 0
var array2_Index = 0

var sequence_tracking: [String] = []

func handleIncrement() {
    let count = sequence_tracking.count 
    if count % 3 == 0 || count % 3 == 1 {
        array1_Index += 1
        array1.append(array1_Index)
        sequence_tracking.append("number")
        print("Increased number to \(array1_Index)")
    } else {
        array2_Index += 1
        let newChar = String(UnicodeScalar(65 + array2_Index)!)
        array2.append(newChar)
        sequence_tracking.append("string")
    }
}

func handleDecrement() {
    guard !sequence_tracking.isEmpty else {
        return
    }
    let last = sequence_tracking.removeLast()
    if last == "number" {
        array1.removeLast()
        array1_Index -= 1
        print("Decreased number to \(array1_Index)")
    } else if last == "string" {
        array2.removeLast()
        array2_Index -= 1
        print("Decreased string to \(array2.last ?? "-")")
    }
}

handleIncrement()
handleIncrement()
handleIncrement()

handleDecrement()