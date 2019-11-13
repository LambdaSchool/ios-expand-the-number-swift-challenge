import Foundation

func expandTheNumber(_ number: Int) -> [Int] {
    /// Blank array utilized for appending the digits
    var answerArray = [Int]()
    
    /// Placeholders for the digits
    let singleDigits = number % 10
    let doubleDigits = (number - singleDigits) % 100
    let tripleDigits = (number - doubleDigits - singleDigits) % 1000
    let quadrupleDigits = (number - tripleDigits - doubleDigits - singleDigits) % 10000
    
    /// Logic to separate the digits into the right sections
    if number > 999 {
        answerArray.append(quadrupleDigits)
    }
    
    if number > 99 {
        answerArray.append(tripleDigits)
    }
    
    if number > 9 {
        answerArray.append(doubleDigits)
    }
    
    answerArray.append(singleDigits)
    
    return answerArray
}

expandTheNumber(199)  // [100, 90, 9]
expandTheNumber(100)  // [100, 0, 0]
expandTheNumber(0)    // [0]
expandTheNumber(562)  // [500, 60, 2]
expandTheNumber(5280) // [5000, 200, 80, 0]
expandTheNumber(560)  // [500, 60, 0]
