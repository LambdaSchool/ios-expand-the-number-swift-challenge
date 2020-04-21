import Foundation

// Create function to expand the number
func expandTheNumber(_ number: Int) -> [Int] {
    var number = number
    var arrayOfInt: [Int] = []
    var currentMultiple = 10
    
    // if the number is zero, append 0
    if number == 0 {
        arrayOfInt.append(0)
    } else {
        // while the number is greater than 10, let numberToBeStored equal to the number modulo currentMultiple (multiple will be multiplied by ten to reach next place, ie: hundreds-place, thousandths -place). 
        while number > 10 {
            
            let numberToBeStored = number % currentMultiple
            arrayOfInt.append(numberToBeStored)
            number = number - numberToBeStored
            currentMultiple = currentMultiple * 10
            
        }
    }
    
    return arrayOfInt.reversed()
}

// Examples
expandTheNumber(199)  // [100, 90, 9]
expandTheNumber(100)  // [100, 0, 0]
expandTheNumber(0)    // [0]
expandTheNumber(562)  // [500, 60, 2]
expandTheNumber(5280) // [5000, 200, 80, 0]
expandTheNumber(560)  // [500, 60, 0]
