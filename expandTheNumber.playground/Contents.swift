import Foundation

func expandTheNumber(_ number: Int) -> [Int] {
// Create the array
    var expandedNumberArray: [Int] = []
    
// Declare each placeholder as a property to make the math less complicated in the "if" statements.
    let ones = number % 10
    let tens = (number - ones) % 100
    let hundreds = (number - tens - ones) % 1000
    let thousands = (number - hundreds - tens - ones) % 10000
    
// Only append numbers up to the correct place (ones, tens, hundreds, or thousands)
    if number > 999 {
        expandedNumberArray.append(thousands)
    }
    if number > 99 {
        expandedNumberArray.append(hundreds)
    }
    if number > 9 {
        expandedNumberArray.append(tens)
    }
    expandedNumberArray.append(ones)
    
    return expandedNumberArray
}

expandTheNumber(199)  // [100, 90, 9]
expandTheNumber(100)  // [100, 0, 0]
expandTheNumber(0)    // [0]
expandTheNumber(562)  // [500, 60, 2]
expandTheNumber(5280) // [5000, 200, 80, 0]
expandTheNumber(560)  // [500, 60, 0]
