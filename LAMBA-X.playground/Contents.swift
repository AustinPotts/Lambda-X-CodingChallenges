
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

//
//func stringsOnly(_ values: [Any])-> [Int] {
//
//    var stringStorage: [String] = []
//    var intStorage: [Int] = []
//    let values = values
//
//
//    for obj in values {
//        if let string = obj as? String {
//            stringStorage.append(string as! String)
//        } else if let int = obj as? Int {
//            intStorage.append(int as! Int)
//        }
//    }
//
//    return intStorage
//
//// MISTAKES: My initial approach was correct, but I got confused as to how to iterate over an any object array, I found out you can check by downcasting the objects as types
//// First Try:::::
////    for n in values as! [[String: AnyObject]] {
////        if n == String {
////            stringStorage.append(n as! String)
////        } else if n == Int {
////
////        }
////    }
//}
//
//stringsOnly([1,2,"no"])
//stringsOnly([4,5,6,"hello", "bye",1])



//MARK: - (HARD) Create a function that takes an array of numbers and return the number that's unique.
// ex: unique([3, 3, 3, 7, 3, 3]) ➞ 7

// I need a function that takes in an int array & returns int

// Iterate through input values of array
   // create unique holder value
   // create nonUnique storage
   // while iterating make the first number = value
   // check if numbers are equal to value

//func findUniqueValue(_ values: [Int]) -> [Int] {
//
//    let values = values
//    var unique: [Int] = []
//    var nonUnique: [Int] = []
//    let x = values[0]
//
//    for n in values {
//        if n == x {
//            nonUnique.append(n)
//        } else if n != x {
//             unique.append(n)
//        }
//    }
//
//    print(unique)
//    return unique
//}
//
//findUniqueValue([1,1,1,1,2])




// MARK: - Day 3 of LAMBDA-X

//MARK: - (EASY) Given an array of boxes, create a function that returns the total volume of all those boxes combined together. A box is represented by an array with three elements: length, width and height.
// For instance, totalVolume([2, 3, 2], [6, 6, 7], [1, 2, 1]) should return 266 since (2 x 3 x 2) + (6 x 6 x 7) + (1 x 2 x 1) = 12 + 252 + 2 = 266.

   // Need to create a function that atkes in three arrays
   // Need to multiply each value in array & return int
//
//func boxed(_ array1: [Int], _ array2: [Int], _ array3: [Int]) -> Int {
//
//   var boxes = [array1, array2, array3]
//
//    var total = 0
//
//    for box in boxes {
//        let i = boxes[0]
//        let j = boxes[1]
//        let k = boxes[2]
//        let values = i * j * k
//        total += values
//        print(total)
//        return values
//    }
//
//    for box in array2 {
//           let i = array2[0]
//           let j = array2[1]
//           let k = array2[2]
//           let values = i * j * k
//           total += values
//           print(total)
//           return values
//       }
//
//
//
//
////    for a in array1 {
////        a * array1[0]
////        print(a)
////    }
////
////    for b in array2 {
////        let values = array2.map{$0 * $0}
////        print(values)
////    }
////
////    for c in array3 {
////
////        print(array3[0] * array3[1])
////    }
//
//   return 1
//
//}
//
//boxed([2,2,2], [3,2,2], [5,4,5])




//MARK: - (Medium) ATM machines allow 4 or 6 digit PIN codes and PIN codes cannot contain anything but exactly 4 digits or exactly 6 digits. Your task is to create a function that takes a string and returns true if the PIN is valid and false if it's not.
//ex: validatePIN("12345") ➞ false
//ex: validatePIN("1234") ➞ true

// Create a function that takes in a String & returns True
//func atmCode(_ code: String) -> Bool {
//
//    // Check if characters are greater than or equal to 4/6
//    // if String is longer than 4-6 return false
//    // if String contains letter return false
//    // else return true
//
//    var isRight: Bool = false
//
//    for _ in code {
//
//        if let _ = Int(code) {
//            isRight = true
//
//        } else {
//            isRight = false
//
//        }
//    }
//
//    if code.count > 6 {
//     isRight = false
//
//    } else if code.count < 4 {
//     isRight = false
//
//    }
//
//    return isRight
//}
//
//atmCode("1234")



//MARK: - (HARD) Create a function that takes an array of card numbers and checks if the sum of their value exceeds 21. If the sum exceeds 21, return true and if the sum is under or equal to 21, return false. Values of the cards are as follows:
// MARK: - COMPLETED IN 30 Minutes
//J-K (face cards) count as 10.
// Aces count either as 1 or 11 - play conservatively, so that if giving an ace a value of 11 causes you to lose and 1 allows you to win, then go with 1.
//ex: overTwentyOne([2, 8, "J"]) ➞ false
//ex: overTwentyOne([5, 5, 3, 9]) ➞ true

// I need to create a function that takes in an array of card values which can be anyobject
// Return True if over 21, return false if under 21

// You need to turn J-K into Int values of 10
//func overTwentyOne(_ cards: [Any]) -> Bool {
//
//   var isOver: Bool = true
//   var intStorage: [Int] = []
//   var stringStorage: [String] = []
//
//    // I need to iterate over the cards
//       // if Int add to Int storage
//       // if String add to String Storage
//         // Combine both Storages
//           // If storage > 21 return isOver:Bool = true
//    for obj in cards {
//        if let int = obj as? Int {
//            intStorage.append(int)
//        } else if let string = obj as? String {
//            stringStorage.append(string)
//        }
//    }
//
//    for j in stringStorage {
//        if j == "J" {
//            intStorage.append(10)
//        }
//    }
//
//    for k in stringStorage {
//        if k == "K" {
//            intStorage.append(10)
//        }
//    }
//
//    var total = 0
//    for t in intStorage {
//           total += t
//       }
//
//    for a in stringStorage {
//        if a == "A" {
//            if total >= 11 {
//               total += 1
//            } else if total <= 10 {
//                total += 11
//            }
//        }
//    }
//
//
//    if total == 21 {
//        isOver = false
//        print("You won!")
//    }
//    else if total > 21 {
//        print("You lost!")
//        isOver = true
//    } else if total < 21 {
//        print("Hit or Stay?")
//        isOver = false
//    }
//    return isOver
//}
//
//overTwentyOne([5, 5, 2, "K"]) //22
//overTwentyOne([5, 4, 1, "A"]) // 21
//overTwentyOne([5, 4, 2, "A"]) // Hit or Stay


// MARK: - Day 4 of LAMBDA-X

//MARK: - (EASY) Create a function that takes an array of strings and return an array, sorted from shortest to longest.

//func sortShortest(_ strings: [String]) -> [String] {
//
//    // Using higher order function .sorted to check if current index.count < next.count
//    let descendingStrings = strings.sorted { $0.count < $1.count }
//
//    print(descendingStrings)
//    return descendingStrings
//}
//
//sortShortest(["Apple", "Tree", "Sixteen"])
//sortShortest(["1234", "123", "12345"])


//MARK: - (MEDIUM) Given a number, n, return a function which adds n to the number passed to it.
//ex: add(10)(20) ➞ 30
//ex: add(-30)(80) ➞ 50

//func add(_ intOne: Int, _ intTwo: Int) -> Int {
//    print(intOne + intTwo)
//    return intOne + intTwo
//}
//
//add(10, 20)
//add(-30, 80)


//MARK: - (HARD) Write a function that returns the number of sock pairs he has. A sock pair consists of two of the same letter, such as "AA". The socks are represented as an unordered sequence.
//ex: sockPairs("AA") ➞ 1
//ex: sockPairs("ABABC") ➞ 2

// I need to create a function that takes in a string of letters & returns int

// iterate over string, if letter == letter then value + 1

func findSockPairs(_ socks: String) -> Int {
    
    var countedSet = Dictionary<Character, Int>()
    var matchingPairs = Int()
    var totalPairs = 0
    
         // Iterate over socks
         for sock in socks {
            // In iteration add sock to countedSet
             countedSet[sock, default: 0] += 1
            print(countedSet)
         }
    
         for key in countedSet.keys { // Iterate over counted Set Keys
            //unwrap the count of socks because dictionary values are always optional.
             if let sockCount = countedSet[key] { // sockCount = current key in counted set
                 matchingPairs = Int(sockCount / 2) // Divide Sock Count by 2
                 if matchingPairs % 1 == 0 { // If equals 0, add to total Pairs
                     totalPairs += matchingPairs
                 }
             }
         }
         return totalPairs
    
}

findSockPairs("AABB")


