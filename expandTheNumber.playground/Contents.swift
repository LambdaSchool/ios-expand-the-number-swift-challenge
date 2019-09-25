import Foundation

func expandTheNumber(_ number: Int) -> [Int] {
    var number = number
    var arrayOfInt: [Int] = []
    var currentMultiple = 10
    
    if number == 0 {
        arrayOfInt.append(0)
    } else {
        
        while number > 10 {
            
            let numberToBeStored = number % currentMultiple
            arrayOfInt.append(numberToBeStored)
            number = number - numberToBeStored
            currentMultiple = currentMultiple * 10
            
        }
    }
    
    return arrayOfInt.reversed()
}

expandTheNumber(199)  // [100, 90, 9]
expandTheNumber(100)  // [100, 0, 0]
expandTheNumber(0)    // [0]
expandTheNumber(562)  // [500, 60, 2]
expandTheNumber(5280) // [5000, 200, 80, 0]
expandTheNumber(560)  // [500, 60, 0]
