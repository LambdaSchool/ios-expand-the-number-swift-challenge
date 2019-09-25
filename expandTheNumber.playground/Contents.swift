import UIKit
import Foundation

func expandTheNumber(_ number: Int) -> [Int] {
    var tempArray: [String] = []
    var expandedArray: [String] = []
    let numberString = String(number)
    
    for x in numberString {
        tempArray.append("\(x)")
    }
    
    var placesCount = tempArray.count - 1
    var newNum = ""
    
    for num in tempArray {
        newNum = num
        if placesCount == 0 {
            expandedArray.append(newNum)
        } else {
            for _ in 1...placesCount {
                if newNum == "0" {
                    break
                } else {
                newNum += "0"
                }
            }
            expandedArray.append(newNum)
            placesCount -= 1
        }
    }
    
    var returnArray: [Int] = []
    for num in expandedArray {
        if let num = Int(num) {
            returnArray.append(num)
        }
    }
    
    return returnArray
}

expandTheNumber(199)  // [100, 90, 9]
expandTheNumber(100)  // [100, 0, 0]
expandTheNumber(0)    // [0]
expandTheNumber(562)  // [500, 60, 2]
expandTheNumber(5280) // [5000, 200, 80, 0]
expandTheNumber(560)  // [500, 60, 0]

