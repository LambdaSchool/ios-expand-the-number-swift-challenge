import Foundation

func expandTheNumber(_ number: Int) -> [Int] {
    
    let ones = number % 10
    let tens = (number - ones) % 100
    let hundreds = (number - tens - ones) % 1000
    let thousands = (number - hundreds - tens - ones) % 10000
    
    var expandTheNumber: [Int] = []
    
    if number > 999 {
         expandTheNumber.append(thousands)
     }
    if number > 99 {
         expandTheNumber.append(hundreds)
     }
    if number > 9 {
        expandTheNumber.append(tens)
    }
    expandTheNumber.append(ones)
    
    return expandTheNumber
}

expandTheNumber(11115) // [1000, 100, 10, 5]
expandTheNumber(2000) // [2000, 0, 0, 0]
expandTheNumber(199)  // [100, 90, 9]
expandTheNumber(100)  // [100, 0, 0]
expandTheNumber(0)    // [0]
expandTheNumber(562)  // [500, 60, 2]
expandTheNumber(5280) // [5000, 200, 80, 0]
expandTheNumber(560)  // [500, 60, 0]
