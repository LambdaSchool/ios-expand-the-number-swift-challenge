import Foundation

func expandTheNumber(_ number: Int) -> [Int] {
    
    var passedNumber = number
    var tensPlaceholder = 10
    var numberArray: [Int] = []
    
    if passedNumber == passedNumber {
        switch passedNumber {
        case 1...10:
            numberArray.append(passedNumber)
        default:
            repeat {
            let bigNumber = passedNumber % tensPlaceholder
            numberArray.append(bigNumber)
            passedNumber = passedNumber - bigNumber
            tensPlaceholder = tensPlaceholder * 10
            } while passedNumber > 10
        }
    }
    return numberArray.reversed()
}




expandTheNumber(199)  // [100, 90, 9]
expandTheNumber(100)  // [100, 0, 0]
expandTheNumber(0)    // [0]
expandTheNumber(562)  // [500, 60, 2]
expandTheNumber(5280) // [5000, 200, 80, 0]
expandTheNumber(560)  // [500, 60, 0]
expandTheNumber(6)
