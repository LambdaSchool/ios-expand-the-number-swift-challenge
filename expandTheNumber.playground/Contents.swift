import Foundation

func expandTheNumber(_ number: Int) -> [Int] {
    var number = number
     var digits: [Int] = []
    while number >= 0 {
         //digits.insert(number % 10, at: 0)
        digits.insert(number % 10, at: 0)
        number /= 10
    }
    
     return digits
}

expandTheNumber(199)  // [100, 90, 9]
expandTheNumber(100)  // [100, 0, 0]
expandTheNumber(0)    // [0]
expandTheNumber(562)  // [500, 60, 2]
expandTheNumber(5280) // [5000, 200, 80, 0]
expandTheNumber(560)  // [500, 60, 0]


