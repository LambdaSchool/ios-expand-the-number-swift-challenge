import Foundation

func expandTheNumber(_ number: Int) -> [Int] {
    
    var arrayOfInt: [Int] = []
    var calculationNumber = number
    while number > 0 {
        arrayOfInt.append(number % 10)
        calculationNumber = calculationNumber / 10
    }
    
    return arrayOfInt
}

expandTheNumber(199)  // [100, 90, 9]
expandTheNumber(100)  // [100, 0, 0]
expandTheNumber(0)    // [0]
expandTheNumber(562)  // [500, 60, 2]
expandTheNumber(5280) // [5000, 200, 80, 0]
expandTheNumber(560)  // [500, 60, 0]
