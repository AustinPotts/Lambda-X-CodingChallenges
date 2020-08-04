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

func findShortest(_ words: String) -> [String] {
    
    // nned to seprate the words into a storage
    let words = words.split(separator: " ")
    var lesserArray = [String]()
    var greaterArray = [String]()
    
    // iterate through the storage
  
    for word in words {
        if word.count >= 2 {
            greaterArray.append("\(word)")
        } else if word.count <= 2 {
            lesserArray.append("\(word)")
        }
    }
        
        // check if word is greater than or equal to previous word
        // if word is greater add to greater array, if lesser add to lesser array
    
    // iterate through lesser array
        // compare words
    return ["\(lesserArray)"]
}

findShortest("I have a dream")







