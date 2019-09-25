import Foundation
import UIKit

func expandTheNumber(_ number: Int) -> [Int] {
    let digits = String(describing: number).compactMap { Int(String($0)) }
    
    var totals = [Int]()
    
    if digits.count > 3 {
        totals.append(digits[0] * 1000)
        totals.append(digits[1] * 100)
        totals.append(digits[2] * 10)
        totals.append(digits[3])
    } else if digits.count > 2 {
        totals.append(digits[0] * 100)
        totals.append(digits[1] * 10)
        totals.append(digits[2])
    } else if digits.count > 1 {
        totals.append(digits[0] * 10)
        totals.append(digits[1])
    } else {
        totals.append(digits[0])
    }
    
    
    return totals
}

expandTheNumber(199)  // [100, 90, 9]
expandTheNumber(100)  // [100, 0, 0]
expandTheNumber(0)    // [0]
expandTheNumber(562)  // [500, 60, 2]
expandTheNumber(5280) // [5000, 200, 80, 0]
expandTheNumber(560)  // [500, 60, 0]
