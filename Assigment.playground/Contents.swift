import Foundation

// პირველი

func factorial(num: Int) -> Int {
    var fact = 1
    for i in 1...num {
        fact *= i
    }
    return fact
}

let ans = factorial(num: 5)
print("Factorial is", ans, "\n")


// მეორე

func generateFibonacci(n: Int) -> [Int] {
    var fibonacciNumbers: [Int] = [0, 1]
    
    for i in 2..<n {
        let nextNumber = fibonacciNumbers[i - 1] + fibonacciNumbers[i - 2]
        fibonacciNumbers.append(nextNumber)
    }
    
    return fibonacciNumbers
}

let first20FibonacciNumbers = generateFibonacci(n: 20)
print(first20FibonacciNumbers, "\n")

//მესამე

func isWordPalindrome(word: String) -> Bool {
    var newWord: String = ""
    
    for char in word {
        newWord = String(char) + newWord
    }
    
    if newWord == word {
        return true
    } else {
        return false
    }
}

var word = "redivider"
let infoAboutWord = isWordPalindrome(word: word)
print(infoAboutWord, "\n")

// მეოთხე

func square(numbers: [Int]) -> [Int] {
    var newNumbers: [Int] = []
    
    for i in numbers {
        newNumbers.append(i*i)
    }
    
    return newNumbers
}

var numbers = [1, 2, 3, 4, 25]
let squaredArray = square(numbers: numbers)
print(squaredArray, "\n")

// მეხუთე

func countWords(_ input: String) -> [String: Int] {
    var wordCounts: [String: Int] = [:]
    
    let words = input.lowercased().split(separator: " ")
    
    for word in words {
        let cleanedWord = String(word.filter { !$0.isPunctuation })
        wordCounts[cleanedWord, default: 0] += 1
    }
    
    return wordCounts
}

let inputString = "TBC × USAID, tbc it academy, we are in TBC academy."
let wordCounts = countWords(inputString)
print(wordCounts, "\n")

// მეექვსე

var binaryNumber: (Int) -> String = { number in
    var binary = ""
    var n = number
    
    while n > 0 {
        let bit = n % 2
        binary = String(bit) + binary
        n /= 2
    }
    
    return binary.isEmpty ? "0" : binary
}

let decimalNumber = 42
let binaryString = binaryNumber(decimalNumber)
print(binaryString, "\n")


// მეშვიდე

let filterOddNumbers: ([Int]) -> [Int] = { numbers in
    var evenNumbers: [Int] = []
    
    for number in numbers where number % 2 == 0 {
        evenNumbers.append(number)
    }
    
    return evenNumbers
}

let scores = [1, 2, 3, 4, 5, 6, 7, 8, 9]
let evenNumbers = filterOddNumbers(scores)
print(evenNumbers, "\n")

// მერვე

let prices = [1, 2, 3, 4, 5]

let multiplyBy10: ([Int]) -> [Int] = { prices in
    prices.map { $0 * 10 }
}

let multipliedNumbers = multiplyBy10(prices)
print(multipliedNumbers, "\n")

// მეცხრე


func calculateSumAfterDelay(_ numbers: [Int], completion: @escaping (Int) -> Void) {
    DispatchQueue.global().asyncAfter(deadline: .now() + 3.0) {
        let sum = numbers.reduce(0, +)
        completion(sum)
    }
}

let temperatures = [1, 2, 3, 4, 5]

calculateSumAfterDelay(temperatures) { result in
    print("Sum after 3 seconds: \(result)", "\n")
}

// მეათე

func filterOddNumbers(_ stringArray: [String]) -> [String] {
    stringArray
        .compactMap { Int($0) }
        .reduce(into: []) { result, number in
            if number % 2 != 0 {
                result.append(String(number))
            }
        }
}

let stringArray = ["1", "2", "3", "4", "5", "6"]
let oddNumberStrings = filterOddNumbers(stringArray)
print(oddNumberStrings, "\n")
