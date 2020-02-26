import Foundation

func expandTheNumber(_ number: Int) -> [Int] {
    var numArray: [Int] = []
    var remainder: Int = 0
    var number = number
    
    for i in 0..<String(number).count {
        remainder = number % 10
        remainder *= Int(pow(10.0, Double(i)))
        number /= 10
        numArray.append(remainder)
    }
    
    numArray.reverse()
    print(numArray)
    return numArray
}

expandTheNumber(199)  // [100, 90, 9]
expandTheNumber(100)  // [100, 0, 0]
expandTheNumber(0)    // [0]
expandTheNumber(562)  // [500, 60, 2]
expandTheNumber(5280) // [5000, 200, 80, 0]
expandTheNumber(560)  // [500, 60, 0]
