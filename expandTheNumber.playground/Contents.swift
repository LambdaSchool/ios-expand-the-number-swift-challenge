import Foundation

func expandTheNumber(_ number: Int) -> [Int] {
    var numbers: [Int] = []
    var orderOfMagnitude = 10
    var number = number
    
    repeat {
        
        let remainder = number % orderOfMagnitude
        numbers.append(remainder)
        number -= remainder
        orderOfMagnitude *= 10
    } while number > 0
    
    return numbers.reversed()
}

expandTheNumber(199)  // [100, 90, 9]
expandTheNumber(100)  // [100, 0, 0]
expandTheNumber(0)    // [0]
expandTheNumber(562)  // [500, 60, 2]
expandTheNumber(5280) // [5000, 200, 80, 0]
expandTheNumber(560)  // [500, 60, 0]

// additional test cases
expandTheNumber(11)
expandTheNumber(2)
expandTheNumber(987654321)
