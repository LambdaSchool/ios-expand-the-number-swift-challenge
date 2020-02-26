import Foundation

func expandTheNumber(_ number: Int) -> [Int] {
    // need to get digit & index in number.length
    // number.length - index = how many zeroes need to be added to expanded number
    // append number to expandedNumber[]
    var expandedNumber: [Int] = []
    
    let numString = String(number)
    let stringLength = numString.length
    
    for i in String(number).length {
        if i = 0 {
            
        }
    }
    
}

expandTheNumber(199)  // [100, 90, 9]
expandTheNumber(100)  // [100, 0, 0]
expandTheNumber(0)    // [0]
expandTheNumber(562)  // [500, 60, 2]
expandTheNumber(5280) // [5000, 200, 80, 0]
expandTheNumber(560)  // [500, 60, 0]
