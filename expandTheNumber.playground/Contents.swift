import Foundation

func expandTheNumber(_ number: Int) -> [Int] {
    
    
    let stringNumber = String(number)
    
    let digits = stringNumber.map { $0.wholeNumberValue }
    
    
    return digits as! [Int]
}

expandTheNumber(199)  // [100, 90, 9]
expandTheNumber(100)  // [100, 0, 0]
expandTheNumber(0)    // [0]
expandTheNumber(562)  // [500, 60, 2]
expandTheNumber(5280) // [5000, 200, 80, 0]
expandTheNumber(560)  // [500, 60, 0]
