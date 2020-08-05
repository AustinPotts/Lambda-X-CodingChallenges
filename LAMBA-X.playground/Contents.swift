import UIKit
// MARK: - Day 1 of LAMBDA-X

//MARK: - (EASY) Create a function that takes a number as an argument, increments the number by +1 and returns the result.


//func addOne(_ num: Int) -> Int {
//    return num + 1
//}
//
//addOne(1)



//MARK: - (Medium) Create a function that takes two numbers as arguments (num, length) and returns an array of multiples of num up to length.
// ex: arrayOfMultiples(7, 5) ➞ [7, 14, 21, 28, 35]
// ex: arrayOfMultiples(12, 10) ➞ [12, 24, 36, 48, 60, 72, 84, 96, 108, 120]

//func multiples(_ num: Int, _ len: Int) -> [Int] {
//
//    // num will be what is mltiplies by 2
//    // len will be how many times that num is multipled
//
//
//    // need to create variables to hold values
//    let number = num
//    let length = len
//    // we need to create an array to store the multiplied values
//    var storage = [Int]()
//    // create a loop to multiply num for ever len
//    for x in 1...length {
//        // add values to storage
//        storage.append(number * x)
//        print(storage)
//    }
//
//    return storage
//
//}
//
//multiples(12, 10)



//MARK: (HARD) Create a function that accepts a string as an argument. Find its shortest word(s) and return them as an array sorted alphabetically (if there are multiple shortest words).
// ex: findShortestWords("I think the solution is fairly obvious.") ➞ ["i"]
// ex: findShortestWords("Chase two rabbits, catch none.") ➞ ["two"]
// ex: findShortestWords("We become what we think about.") ➞ ["we", "we"]

//func findShortest(_ words: String) -> [String] {
//
//    // nned to seprate the words into a storage
//    let words = words.split(separator: " ")
//    var lesserArray = [String]()
//    var greaterArray = [String]()
//
//    // iterate through the storage
//
//    for word in words {
//        if word.count >= 2 {
//            greaterArray.append("\(word)")
//        } else if word.count <= 2 {
//            lesserArray.append("\(word)")
//        }
//    }
//
//        // check if word is greater than or equal to previous word
//        // if word is greater add to greater array, if lesser add to lesser array
//
//    // iterate through lesser array
//        // compare words
//    return ["\(lesserArray)"]
//}
//
//findShortest("I have a dream")




// MARK: - Day 2 of LAMBDA-X

//MARK: - (EASY) Create a function that sorts an array and removes all duplicate items from it.
//ex: setify([1, 3, 3, 5, 5]) ➞ [1, 3, 5]


// I need to create a function that takes in an Int Array & retruns Int Array
// I need to take the input values & remove duplicates

// use set? i.e let nums = Set(nums)

//func setify(_ nums: [Int])-> [Int]{
//
//    let setNums = Set(nums)
//    print(setNums)
//    let order = setNums.sorted()
//
//    return order
//
//}
//
//
//setify([1,3,3,5,5])


//MARK: - (MEDIUM) Create a function that takes an array of non-negative integers and strings and return a new array without the strings.
// ex: filterArray([1, 2, "a", "b"]) ➞ [1, 2]

// So I need a function that takes in an array of any object & returns an array of Int

// Could iterate over input array
         // for every value, check if string or int
              // if string add to string array, else add to int array
              // create storages for strings + Ints
              //return string storage


func stringsOnly(_ values: [Any])-> [Int] {
    
    var stringStorage: [String] = []
    var intStorage: [Int] = []
    let values = values
    
    
    for obj in values {
        if let string = obj as? String {
            stringStorage.append(string as! String)
        } else if let int = obj as? Int {
            intStorage.append(int as! Int)
        }
    }
    
    return intStorage
    
// MISTAKES: My initial approach was correct, but I got confused as to how to iterate over an any object array, I found out you can check by downcasting the objects as types
// First Try:::::
//    for n in values as! [[String: AnyObject]] {
//        if n == String {
//            stringStorage.append(n as! String)
//        } else if n == Int {
//
//        }
//    }
}

stringsOnly([1,2,"no"])
stringsOnly([4,5,6,"hello", "bye",1])


