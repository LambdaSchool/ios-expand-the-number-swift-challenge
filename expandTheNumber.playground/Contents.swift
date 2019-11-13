import Foundation

func expandTheNumber(_ number: Int) -> [Int] {
    var expanded = [Int]()
    var div = 10
    var number = number
    
    if number != 0 {
        while number > 10 {
            let currentNumber = number % div
            expanded.append(currentNumber)
            number -= currentNumber
            div *= 10
        }
        return expanded.reversed()
    } else {
        return [0]
    }
}

expandTheNumber(199)  // [100, 90, 9]
expandTheNumber(100)  // [100, 0, 0]
expandTheNumber(0)    // [0]
expandTheNumber(562)  // [500, 60, 2]
expandTheNumber(5280) // [5000, 200, 80, 0]
expandTheNumber(560)  // [500, 60, 0]
