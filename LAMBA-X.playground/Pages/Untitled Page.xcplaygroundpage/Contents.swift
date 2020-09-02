
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

//func findSockPairs(_ socks: String) -> Int {
//
//    var countedSet = Dictionary<Character, Int>()
//    var matchingPairs = Int()
//    var totalPairs = 0
//
//         // Iterate over socks
//         for sock in socks {
//            // In iteration add sock to countedSet
//             countedSet[sock, default: 0] += 1
//            print(countedSet)
//         }
//
//         for key in countedSet.keys { // Iterate over counted Set Keys
//            //unwrap the count of socks because dictionary values are always optional.
//             if let sockCount = countedSet[key] { // sockCount = current key in counted set
//                 matchingPairs = Int(sockCount / 2) // Divide Sock Count by 2
//                 if matchingPairs % 1 == 0 { // If equals 0, add to total Pairs
//                     totalPairs += matchingPairs
//                 }
//             }
//         }
//         return totalPairs
//
//}
//
//findSockPairs("AABB")

// MARK: - Day 5 of LAMBDA-X

//MARK: - (EASY) Create a function which takes in a word and spells it out, by consecutively adding letters until the full word is completed.
//ex: spelling("bee") ➞ ["b", "be", "bee"]

//func spelling(_ word: String) -> [String] {
//
//    var words: [String] = []
//    var s = ""
//
//
//    for char in word {
//        s+=String(char)
//        words.append(s)
//    }
//
//    print(words)
//    return words
//}
//
//spelling("bee")
//
//extension String {
//    subscript(i: Int) -> String {
//        return String(self[index(startIndex, offsetBy: i)])
//    }
//}


//MARK: - (MEDIUM) Create a function that takes an array of integers and removes the smallest value.
// A museum wants to get rid of some exhibitions. Katya, the interior architect, comes up with a plan to remove the most boring exhibitions. She gives them a rating, and removes the one with the lowest rating. Just as she finishes rating the exhibitions, she's called off to an important meeting. She asks you to write a program that tells her the ratings of the items after the lowest one is removed.

//ex: removeSmallest([1, 2, 3, 4, 5] ) ➞ [2, 3, 4, 5]
//ex: removeSmallest([2, 2, 1, 2, 1]) ➞ [2, 2, 2, 1]

//func removeSmallest(_ array: [Int])-> [Int] {
//
//    // Iterate over the array, find the smallest number
//    // Once smallest number found, remove
//    // Use max()? or sorted?
//
//   //MARK: - This code works, but its not optimal
////    var storage: [Int] = []
////
////    for n in array {
////        storage.append(n)
////    }
////
////    let sorted = storage.sorted(by: >)
////
////    print(sorted.dropLast())
////    return sorted.dropLast()
//
//    //MARK: - Improved - O(n log (n)), where n is the length of the sequence.
//    let sorted = array.sorted(by: >)
//
//    //O(n)
//    return sorted.dropLast()
//    //O(n) + O(n log(n)) = O(n log(n))
//    // For Big O complexity, all you care about is the dominant term.  n log(n) dominates n so that's the only term that you care about.
//
//}
//
//removeSmallest([6,2,2,3,1,4,5])
//removeSmallest([2, 2, 1, 2, 1])


//MARK: - (HARD) Create a function that takes a string and replaces every letter with the letter following it in the alphabet ("c" becomes "d", "z" becomes "a", "b" becomes "c", etc). Then capitalize every vowel (a, e, i, o, u) and return the new modified string.
//ex: mangle("Fun times!") ➞ "GvO Ujnft!"
//ex: mangle("The quick brown fox.") ➞ "UIf rvjdl cspxO gpy."
//func mangle(_ word: String)-> String {
//
//
//    var s = " "
//    for i in word.shuffled() {
//        if i == "a" {
//            s+=String(i.uppercased())
//        } else if i == "e" {
//            s+=String(i.uppercased())
//        } else if i == "i" {
//            s+=String(i.uppercased())
//        } else if i == "o" {
//            s+=String(i.uppercased())
//        } else if i == "u" {
//            s+=String(i.uppercased())
//        } else {
//            s+=String(i)
//        }
//    }
//
//
//
//    print(s)
//    return s
//}
//
//mangle("Fun times!")

//MARK: - (MEDIUM) Create a function that counts the number of times a particular letter shows up in the word search.

//ex: letterCounter([
//  ["D", "E", "Y", "H", "A", "D"],
//  ["C", "B", "Z", "Y", "J", "K"],
//  ["D", "B", "C", "A", "M", "N"],
//  ["F", "G", "G", "R", "S", "R"],
//  ["V", "X", "H", "A", "S", "S"]
//], "D") ➞ 3

// I need to iterate over array of letters

//func letterCounter(_ wordArray: [String]) -> [Int] {
//
//    // Create a Dictionary to manage specific letters
//    var countedSet = Dictionary<String, Int>()
//
//    //While i iterate through the word array
//
//    for char in wordArray {
//         countedSet[char, default: 0] += 1
//    }
//
//    var storage: [Int] = []
//
//    for key in countedSet.keys { // Iterate over counted Set Keys
//        //unwrap the count of socks because dictionary values are always optional.
//        if var keyCount = countedSet[key] { //current key in counted set
//           // print(keyCount)
//            storage.append(keyCount)
//        }
//    }
//
//    let n = storage.sorted()
//
//    print(n.dropFirst(11))
//    return n
//
//}
//
//
//letterCounter(["D", "E", "Y", "H", "A", "D" ,"C", "B", "Z", "Y", "J", "K", "D", "B", "C", "A", "M", "N"])


// MARK: - Day 6 of LAMBDA-X

//MARK: - (EASY) Create a function that repeats each character in a string n times.
//ex: repeating("mice", 5) ➞ "mmmmmiiiiiccccceeeee"
//ex: repeating("stop", 1) ➞ "stop"
//
//func repeating(_ string: String, _ n: Int)-> String {
//
//    var newString: String = ""
//
//    for i in string {
//    let mult = String(repeating: i as Character, count: n)
//        newString.append(mult)
//    }
//
//    print(newString)
//    return newString
//
//}
//
//repeating("mice", 5)
//repeating("stop", 1)


//MARK: (MEDIUM) Andy, Ben and Charlotte are playing a board game. The three of them decided to come up with a new scoring system. A player's first initial ("A", "B" or "C") denotes that player scoring a single point. Given a string of capital letters, return an array of the players' scores.
//ex: calculateScores("A") ➞ [1, 0, 0]
//ex: calculateScores("ABCBACC") ➞ [2, 2, 3]

//
//func calScore(_ letters: String) -> [Int] {
//
//    // Create dictionary to store values with key A:1, A:2 etc.
//    var dict = Dictionary<Character, Int>()
//
//    // Create array to store total
//    var intArray: [Int] = []
//
//    // iterate over the characters
//    for char in letters {
//        // Add key with value
//         dict[char, default: 0] += 1
//         //print(dict)
//    }
//
//    for key in dict.keys {
//        if let count = dict[key] {
//            intArray.append(count)
//            //print(count)
//        }
//    }
//    //print(intArray.sorted(by: >))
//
//    return intArray
//}
//
//calScore("ABCBACC")


//MARK: (HARD) A boomerang is a V-shaped sequence that is either upright or upside down. Specifically, a boomerang can be defined as: sub-array of length 3, with the first and last digits being the same and the middle digit being different. Create a function that returns the total number of boomerangs in an array.
// ex: countBoomerangs([9, 5, 9, 5, 1, 1, 1]) ➞ 2

//
//func countBoomerangs(_ arrayInt: [Int]) -> Int {
//
//    // Iterate over array, check if first index is == next.next index
//    var totalRangs = 0
//
//
//    for i in 0..<arrayInt.count - 2 {
//
//            let elem = arrayInt[i]
//            let elem2 = arrayInt[i + 1]
//            let elem3  = arrayInt[i + 2]
//
//
//            if elem == elem3 && elem2 != elem {
//                totalRangs += 1
//                print(totalRangs)
//            }
//
//        // print("Current: \(elem), Middle: \(elem2) NextThird: \(elem3)")
//    }
//
//    return totalRangs
//}
//
//countBoomerangs([9, 5, 9, 5, 1, 1, 1])
//countBoomerangs([5, 6, 6, 7, 6, 3, 9])


// MARK: - Day 7 of LAMBDA-X

//MARK: - (EASY) Create a function that takes a number as an argument and returns true or false depending on whether the number is symmetrical or not. A number is symmetrical when it is the same as its reverse.
//ex: isSymmetrical(7227) ➞ true
//ex: isSymmetrical(9939) ➞ false
//
//func isSym(_ number: Int) -> Bool {
//
//    let string = String(number)
//    var rev: String = ""
//
//    for char in string.reversed() {
//        rev.append(char)
//    }
//
//    if string == rev {
//        return true
//    } else {
//        return false
//    }
//
//}
//
//isSym(7227)
//isSym(9939)


//MARK: - (MEDIUM) Create a function that takes a string as an argument and converts the first character of each word to uppercase. Return the newly formatted string.
//ex: makeTitle("This is a title") ➞ "This Is A Title"

//MARK: FIX
//func uppercase(_ string: String) -> String {
//
//
//    var split = string.split(separator: " ")
//
//    var holder: String = ""
//
//    let map = split.map{ $0.uppercased() }
//
//    for word in map {
//        holder.append("\(word) ")
//    }
//
//    print(holder)
//
//    return holder
//}
//
//uppercase("This is a title")

//MARK: (HARD) Create a function that takes a string of words and return a string sorted alphabetically by the last character of each word. (DOES NOT WORK!)
//ex: sortByLast("herb camera dynamic") ➞ "camera herb dynamic"
//ex: sortByLast("stab traction artist approach") ➞ "stab approach traction artist"
//
//func sortByLast(_ string: String) -> String {
//
//    var order: String = ""
//
//    let split = string.split(separator: " ")
//    for word in split {
//        if word.last == "k" {
//            order.append(contentsOf: word)
//        }
//    }
//
//    //split.sorted(by: sortByLast(<#T##string: String##String#>))
//
//    // iterate through the string words sentence
//       //check for character after .sorted
//    //
//
//    return order
//}
//
//sortByLast("truck please")


//MARK: - Day 8 of LAMBDAX

//MARK: - (EASY) Create a function to calculate the determinant of a 2 * 2 matrix. The determinant of the following matrix is: ad - bc:
//ex: calcDeterminant([
//  [1, 2],
//  [3, 4]
//]) -2

//func calcDeterminant(_ input:[Int], _ input2: [Int]) -> Int {
//
//    // Go through each value & store in letter variable
//
//    //create total value
//    var totalValue = 0
//
//    // for i in input[0]
//    var a = 0
//    var b = 0
//    var c = 0
//    var d = 0
//
//    for i in input {
//        for j in input where j != i {
//            b = i
//            a = j
//        }
//    }
//
//    for i in input2 {
//        for j in input2 where j != i {
//            d = i
//            c = j
//        }
//    }
//
//    let aD = a * d
//    let bC = b * c
//    totalValue = aD - bC
//
//    print("Total: \(totalValue)")
//
//
//
//    return totalValue
//
//}


//calcDeterminant([1,2], [3,4])
//calcDeterminant([5,3], [3,1])


//MARK: - (MEDIUM) Create a function that returns the number of hashes and pluses in a string.
// ex: hashPlusCount("###+") ➞ [3, 1]
// ex: hashPlusCount("##+++#") ➞ [3, 3]

//func hashPlusCounter(_ string: String) -> [Int]{
//
//    var storage: [Int] = []
//    var hashCounter = 0
//    var plusCounter = 0
//
//    for char in string {
//        if char == "#" {
//            hashCounter += 1
//        } else if char == "+" {
//            plusCounter += 1
//        }
//    }
//
//    storage.append(hashCounter)
//    storage.append(plusCounter)
//
//    print(storage)
//    return storage
//
//}
//
//hashPlusCounter("###+")
//hashPlusCounter("##+++#")


//MARK: - (HARD) The digit distance between two numbers is the total value of the difference between each pair of digits.
//ex: digitDistance(121, 599) ➞ 19
//ex: digitDistance(10, 20) ➞ 1

//func digitDistance(_ digit1: Int, _ digit2: Int) -> Int {
//
//    var storage1: [Int] = []
//    var storage2: [Int] = []
//    storage1.append(contentsOf: digit1.digits)
//    print(storage1)
//    storage2.append(contentsOf: digit2.digits)
//    print(storage2)
//
//
//    let map = zip(storage2, storage1).map({ $0 - $1 })
//    print("MAP: \(map)")
//
//    let total = map.reduce(0, +)
//    print("Total: \(total)")
//
//    return total
//}
//extension BinaryInteger {
//    var digits: [Int] {
//        return String(describing: self).compactMap { Int(String($0)) }
//    }
//}
//
//digitDistance(121, 599)
//digitDistance(10, 20)


//MARK: - Day 9 of LAMBDAX

//MARK: - (EASY) Create a function that takes two strings as arguments and returns the number of times the first string (the single character) is found in the second string.
//ex: charCount("a", "edabit") ➞ 1
//ex: charCount("c", "Chamber of secrets") ➞ 1

//func charCount(_ stringLetter: String, _ stringSentence: String) -> Int {
//
//    var total = 0
//
//    // Get the value of stringLetter
//
//    // for char in sentence { if char == stringLetter { total+1 } }
//    for char in stringSentence {
//        if char == Character(stringLetter) {
//            total += 1
//        }
//    }
//
//    return total
//}
//
//charCount("a", "edabit")
//charCount("c", "Cchacmber of secrets")


//MARK: - (MEDIUM) Create a function that takes two arrays and combines them by alternatingly taking elements from each array in turn. ( NOT WORKING!! )

//func mergeArrays(_ arrayString: [String], _ arrayNumber: [Int]) -> [AnyObject] {
//
//
//    print(arrayString.sorted())
//
//    var combined: [AnyObject] = []
//    combined.append(contentsOf: arrayNumber.sorted())
//    combined.append(arrayString)
//
//    print(combined)
//
//    return []
//}
//
//mergeArrays(["b,c,a"], [2,3,1])


//MARK: - (HARD) Write a function that returns the closest palindrome number to an integer. If two palindrome numbers tie in absolute distance, return the smaller number (BASIC SOLUTION, EDIT FOR EDGE CASES)
//ex: closestPalindrome(887) ➞ 888
//ex: closestPalindrome(100) ➞ 99
// 99 and 101 are equally distant, so we return the smaller palindrome.
//
//func closestPalindrome(_ int: Int) -> Int {
//
//    // number reversed must equal number
//
//    var reverse = ""
//    reverse.append(contentsOf: String(int))
//
//    var rev = String(reverse.reversed())
//
//    var total = int
//
//
//
//    if rev != String(int){
//        total += 1
//
//    } else if rev == String(int){
//        return int
//    }
//
//    return total
//}
//
//closestPalindrome(100)


//MARK: - Day 10 of LAMBDA X

//MARK: - (Easy) Create a function that checks if the box is completely filled with the asterisk symbol *
//completelyFilled([
//  "#####",
//  "#***#",
//  "#***#",
//  "#***#",
//  "#####"
//]) ➞ true
//
//completelyFilled([
//  "#####",
//  "#* *#",
//  "#***#",
//  "#***#",
//  "#####"
//]) ➞ false

//func isTheBoxFilled(_ arrayString: [String]) -> Bool {
//
//    //Need a variable to hold my final bool value
//    var bool: Bool = true
//
//    for word in arrayString {
//        for char in word {
//        if char == " " {
//            bool = false
//        }
//      }
//   }
//
//
//    return bool
//}
//MARK: Better way to do this
//func completelyFilled(_ arr: [String]) -> Bool {
//    return arr.map{ !$0.contains(" ") }.contains(false) ? false : true
//}

////isTheBoxFilled(["#####",
////                "##+##",
////                "#####"])
//isTheBoxFilled(["#####",
//                "## ##",
//                "#####"])



//MARK: - (MEDIUM) Create a function that takes an array of numbers and returns the mean value.
//Ex: mean([1, 0, 4, 5, 2, 4, 1, 2, 3, 3, 3]) ➞ 2.55

//func mean(_ intArray: [Int]) -> Double {
//
//    var total: Int = 0
//
//    for i in intArray {
//        total += i
//    }
//    print(total)
//    let count = intArray.count
//    let sum = Double(total) / Double(count)
//
//    return sum
//}
//
//mean([1, 0, 4, 5, 2, 4, 1, 2, 3, 3, 3])

//func mean(_ intArray: [Int]) -> Double {
//    let m = intArray.reduce(0, +)
//
//    return Double(m) / Double(intArray.count)
//}
//mean([1, 0, 4, 5, 2, 4, 1, 2, 3, 3, 3])

//MARK: - (HARD) Write a function that transforms an array into an array of its differences repeatedly until there exists only one element left. A difference is A[n+1] - A[n].
//ex: nDifferences([5, 1, 9, 3, 4, 0]) ➞ -80
//ex: nDifferences([1, 1, 1, 1]) ➞ 0

//func nDifferences(_ arr: [Int]) -> Int {
//
//    //I need to iterate over the initial array
//    // In iteration I need to subtract the current index value from the next index value
//
//    //Create variable to hold input
//    var arr1 = arr
//
//      // While the count of the input is greater than one
//      while arr1.count > 1 {
//          //Create variable to store Ints
//          var arr2 = [Int]()
//          //Iterate throught the input value.count, subract each after iteration
//          for i in 0..<(arr1.count - 1) {
//              //append values of [i+1] subtracted from current [i] to array storage
//              arr2.append(arr1[i+1] - arr1[i])
//          }
//
//          arr1 = arr2
//      }
//
//      return arr1[0]
//
//}
//nDifferences([5, 1, 9, 3, 4, 0])
//
////MARK: - While Loop Practice
////Print Index[0] & Index[1] in while loop until no more values
//func tester(_ intArray: [Int]) -> Int {
//
//    var arr = intArray
//    //Establish baseline
//    while arr.count > 1 {
//        print(arr.count)
//        var arr2 = [Int]()
//        // In the While Loop, perform For Loop, which will subract one from the index count
//        // I.E Array.count = 5 -> Array.count = 4 -> Array.count = 3 etc.
//        for i in 0..<(arr.count - 1){
//           print("Arguement One:\(arr[i])")
//           print("Arguement Two:\(arr[i+1])")
//           arr2.append(arr[i] - arr[i+1])
//        }
//        //If you dont set the current arguement to the next argument, it will loop forever
//        arr = arr2
//    }
//
//    return 0
//}
//
//tester([1,2,3,4,5])


//MARK: Day 11 of LAMBDA X

//MARK: - (EASY) Write a function that returns true if all characters in a string are identical and false otherwise.
//ex: isIdentical("aaaaaa") ➞ true

//func isIdentical(_ string: String) -> Bool {
//
//    var holderLetter: Character
//    var bool: Bool = true
//
//    for char in string {
//        holderLetter = char
//        for char2 in string {
//            if char2 != holderLetter {
//                bool = false
//            }
//        }
//    }
//
//    return bool
//
//}
//
//isIdentical("aaxaa")
//MARK: - IMPROVED VERISON
//func isIdenticalImprove(_ string: String) -> Bool {
    
    // create a set, which creates new value of only one membership so if aa appears twice it will count 1. That means if all A's then the set equals 1 but if one letter is different, the set will increment
//    let set = Set(Array(string)).count == 1
//    print(set)
//
//    return set
//
//}
//isIdenticalImprove("aaaaa")


//MARK: - (MEDIUM) Create a function that takes a string and returns a new string with each new character accumulating by +1. Separate each set with a dash.

//ex: accum("abcd") ➞ "A-Bb-Ccc-Dddd"

//func accum(_ string: String) -> String {
//
//    // ill need to create a variable to hold the final result
//    var holder: [String] = []
//    // split the charachters of the string by -
//
//    //create a counter for adding extra letters
//    //i.e first loop around, counter = 0 then 1 then 2 etc
//    var counter = 0
//
//    for char in string {
//        counter += 1
//        let s = String(repeating: char, count: counter)
//        if counter == 1 {
//            holder.append(s)
//        } else if counter != 0 {
//            holder.append("-\(s)")
//
//        }
//    }
//
//    let joined = holder.joined()
//    print(joined)
//
//    return joined
//
//}
//
//accum("abcd")


//MARK: (HARD) - Write a function that returns the number of ways a person can climb n stairs, where the person may only climb 1 or 2 steps at a time.
//ex: To illustrate, if n = 4 there are 5 ways to climb:
//[1, 1, 1, 1]
//[2, 1, 1]
//[1, 2, 1]
//[1, 1, 2]
//[2, 2]

//func waysToClimb(_ n: Int) -> Int {
    
//    var waysToClimb = Int()
//
//    // Add each combo here
//    var intArray: [Int] = []
//
//
//    let oneStep = 1
//    let twoStep = 2
//
//    //base case is needed - what is the base case
//    //when theres no more ways to climb
//    if n == 0 {
//        return waysToClimb
    
    //function must call itself - where will we call
    
    //algorithm must change its state and move toward the base case.
    
    //need a counter to increment on ways to climb
//    if n <= 1 {
//        return 1
//    }
//
//    return waysToClimb(n - 1) + waysToClimb(n - 2)
//
//
//}
//waysToClimb(4)

//MARK: - Day 12 of LAMBDA X

//MARK: - (Linked List In Swift)

//create a basic node class
//
//public class Node {
//
//   // A node needs a value associated with it.
//    var value: String
//    init(value:String){
//        self.value = value
//    }
//    //I declared a property named value of type String. In your own apps, this could be any datatype you want to store.
//
//    //In addition to a value, each node needs a pointer to the next node in the list.
//    var next: Node?
//    //You have declared a property named next of type Node. Note that you’ve made next an optional. This is because the last node in the linked list does not point to another node.
//
//    weak var previous: Node?
//    //To avoid ownership cycles, we declare the previous pointer to be weak. If you have a node A that is followed by node B in the list, then A points to B but also B points to A. In certain circumstances, this ownership cycle can cause nodes to be kept alive even after you deleted them.
//
//}
//
////This class will keep track of where the list begins and ends. It will also provide a number of other helper functions.
//public class LinkedList {
//    //Linked list has a head value & tail value (head node, tail node)
//  fileprivate var head: Node?
//  private var tail: Node?
//
//
//  public var isEmpty: Bool {
//    return head == nil
//  }
//  //First node is head
//  public var first: Node? {
//    return head
//  }
//  //Last node is tail
//  public var last: Node? {
//    return tail
//  }
//
//    //To handle appending a new node on your list, you’ll declare a append(value:) method in your LinkedList class
//    public func append(value: String) {
//      // 1
//      //Create a new Node to contain the value. Remember, the purpose of the Node class is so that each item in the linked list can point to the previous and next node.
//      let newNode = Node(value: value)
//      // 2
//      //If tailNode is not nil, that means there is something in the linked list already. If that’s the case, configure the new item to point to the tail of the list as it’s previous item.
//      if let tailNode = tail {
//        newNode.previous = tailNode
//        tailNode.next = newNode
//      }
//      // 3
//      else {
//        head = newNode
//      }
//      // 4
//      tail = newNode
//    }
//
//}

//MARK: - (EASY) The recursive function for this challenge should return the factorial of an inputted integer. If anyone needs a refresher, factorials in mathematics are represented by an exclamation point placed to the right of a number:
//ex: factorial(5) ➞ 120

//
//func factorial(_ int: Int) -> Int {
//
//  if int == 1 {
//        return 1
//    }
//    return int * factorial(int - 1)
//
//}
//
//factorial(5)


//MARK: - (MEDIUM) Create a function that transforms sentences ending with multiple question marks ? or exclamation marks ! into a sentence only ending with one without changing punctuation in the middle of the sentences.
//ex: noYelling("What went wrong?????????") ➞ "What went wrong?"
//ex: noYelling("Oh my goodness!!!") ➞ "Oh my goodness!"

//func noYelling(_ string: String) -> String {
//
//    //I need a string property to hold my final result based upon the conditions
//    var stringResult = ""
//    // iterate through the characters
//        // append char to holder
//        //if char == "!" || "?" then return the string sentence
//    for char in string {
//        stringResult.append(char)
//        if char == "!" {
//            return stringResult
//        } else if char == "?" {
//            return stringResult
//        }
//    }
//
//    return stringResult
//}
//
//noYelling("Hello!!!!!!")



//MARK: - (HARD) Write a function that returns a closure, which transforms its input by adding a particular suffix at the end.
//let add_ly = add_suffix("ly")
//
//add_ly("hopeless") ➞ "hopelessly"
//add_ly("total") ➞"totally"
         // Function input value  //Returned closure value that returns a value
//func add_suffix(_ suffix: String) -> (String) -> String {
//    return { $0 + suffix }
//}
//
//let add_ly = add_suffix("ly")
//
//add_ly("total")

//Write a function that returns a closure, which transforms its input by adding a particular number at the end.



//MARK: - Day 13 of LAMBDA X

//MARK: - (EASY) Write a function that transforms all letters from [a, m] to 0 and letters from [n, z] to 1 in a string.
//ex: convertBinary("house") ➞ "01110"
//ex: convertBinary("excLAIM") ➞ "0100000"

//func convertBinary(_ string: String) -> String {
//
//    //I need to store the values for 0 (a-m) & 1 (n-z)
//    let zeroArray = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m"]
//    let oneArray = ["n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
//    var holder = ""
//
//    for char in string {
//        print("Char: \(char)")
//        for letter in zeroArray {
//            print("Letter: \(letter)")
//            if char == Character(letter) {
//                holder.append("0")
//            }
//        }
//        for letr in oneArray {
//            if char == Character(letr) {
//                holder.append("1")
//            }
//        }
//    }
//
//
//    return holder
//
//}
//
//convertBinary("house")
//convertBinary("moon")

//MARK: (MEDIUM) Create a function that takes an array consisting of dice rolls from 1-6. Return the sum of your rolls with the following conditions:
//If a 1 is rolled, that is bad luck. The next roll counts as 0.
//If a 6 is rolled, that is good luck. The next roll is multiplied by 2.
//The array length will always be 3 or higher.

//func roll(_ arrayInt:[Int]) -> Int {
//
//    var total = 0
//    var arrayIntStorage: [Int] = []
//    arrayIntStorage.append(contentsOf: arrayInt)
//
//    for n in arrayIntStorage {
//        if n == 1 {
//            arrayIntStorage.remove(at: 1)
//            print(arrayIntStorage)
//        }
//    }
//
//
//    for i in arrayIntStorage {
//           total += i
//       }
//
//
//
//    return total
//
//}
//
//roll([1,2,3])


//MARK: - (HARD) Create a function that subtracts one positive integer from another, without using any arithmetic operators such as -, %, /, +, etc.

//func mySub(_ int1: Int, _ int2: Int) -> Int {
//
//    // Iterate till there is no carry
//    while (int2 != 0) {
//
//           // carry now contains common
//           // set bits of x and y
//           var carry = int1 & int2
//
//           // Sum of bits of x and y where at
//           // least one of the bits is not set
//           int1 = int1 ^ int2
//
//           // Carry is shifted by one so that
//           // adding it to x gives the required sum
//           int2 = carry << 1
//    }
//
//    return int1
//}


//MARK: - Day 14 of LAMBDA X
//MARK: - (Code Signal) Given a year, return the century it is in. The first century spans from the year 1 up to and including the year 100, the second - from the year 101 up to and including the year 200, etc.

//func centuryFromYear(year: Int) -> Int {
//
////The first century spans from the year 1 up to and including the year 100, the second - from the year 101 up to and including the year 200,
//
//// I'll need something to hold my century values, as I dont want to write out 20
////var century = 0
////
////// What do I need to do with the input Int value 'year'?
////// each century = 100
////
////
////if year > 0 {
////    century += 1
////    print(century)
////    centuryFromYear(year: year - 100)
////}
//
////MARK: - Reflection: My initial thought to use math divide by 100 was correct, however I didn't think of the most solution answer first. I jumped to something more difficult not realizing I could do the entirety in one line
//
//return (year - 1) / 100 + 1
//
//}
//
////centuryFromYear(year: 1700)
//centuryFromYear(year: 1905)


//MARK: - (Code Signal) Given the string, check if it is a palindrome.

//func checkPalindrome(inputString: String) -> Bool {
//
//    var bool: Bool = true
//
//    let rev = String(inputString.reversed())
//    print(rev)
//
//    if rev != inputString {
//        bool = false
//    }
//
//    return bool
//
//}
//
//checkPalindrome(inputString: "abba")


//MARK: - Day 15 of LAMBDA X
//MARK: - (Code Signal) Given an array of integers, find the pair of adjacent elements that has the largest product and return that product.

//func adjacentElementsProduct(inputArray: [Int]) -> Int {
//
//    // I need to find 2 values, which when multiplied produce the largest sum
//    //ex: [5, 1, 2, 3, 1, 4]
////    for i in inputArray {
////        if i > holder {
////            holder = i
////        }
////    }
//
////    for i in inputArray {
////        for o in inputArray where o != i {
////            print(i * o)
////
////            if i * o > holder {
////                holder = i * o
////            }
////        }
////    }
//
//    var i = 0;
//    var holder = 0
//
//
////    while i < inputArray.count {
////        var a = inputArray[i]
////        var b : Int = 0
////        if i + 1 < inputArray.count {
////            b = inputArray[i+1]
////        }
////        if a * b > holder {
////            holder = a * b
////        }
////
////        i += 2
////    }
//
//    while i < inputArray.count - 1 {
//        if inputArray[i] >= 0 {
//        if inputArray[i] * inputArray[i+1] > holder {
//            holder = inputArray[i] * inputArray[i+1]
//         }
//        } else {
//            if inputArray[i] * inputArray[i+1] < holder {
//               holder = inputArray[i] * inputArray[i+1]
//            }
//        }
//        i += 1
//    }
//
//
//
//    return holder
//
//}
//
//adjacentElementsProduct(inputArray: [5, 1, 2, 3, 1, 4])


//MARK: (EASY) Write a function that takes an integer minutes and converts it to seconds.
//convert(5) ➞ 300
//
//func convert(_ minutes: Int) -> Int {
//
//    return minutes * 60
//
//}
//convert(5)


//MARK: (MEDIUM) Create a function that takes an integer and outputs an n x n square solely consisting of the integer n.
//squarePatch(3) ➞ [
//  [3, 3, 3],
//  [3, 3, 3],
//  [3, 3, 3]
//]

// I want to take in a number, then creat number amount of arrays with number amount of number inside the array
//func squarePathc(_ number: Int) -> [[Int]] {
//
//    var finalArray: [[Int]] = []
//
//    // you need to create the number amount of arrays (ex: 3) then append those to the final array
//    var holderArray: [Int] = []
//
//    for _ in 1...number {
//        holderArray.append(number)
//    }
//
//    for _ in 1...number {
//        finalArray.append(holderArray)
//    }
//
//    print(finalArray)
//
//
//    return finalArray
//}
//
//squarePathc(3)


