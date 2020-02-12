import Foundation

func expandTheNumber(_ number: Int) -> [Int] {
    var intArray = [Int]()
    let oneDigit = number % 10
    let twoDigits = (number - oneDigit) % 100
    let threeDigits = (number - twoDigits - oneDigit) % 1000
    let fourDigits = (number - threeDigits - twoDigits - oneDigit) % 10000

    if number > 999 {
        intArray.append(fourDigits)
    }
    if number > 99 {
        intArray.append(threeDigits)
    }
    if number > 9 {
        intArray.append(twoDigits)
    }
    intArray.append(oneDigit)
    return intArray
}

expandTheNumber(199)  // [100, 90, 9]
expandTheNumber(100)  // [100, 0, 0]
expandTheNumber(0)    // [0]
expandTheNumber(562)  // [500, 60, 2]
expandTheNumber(5280) // [5000, 200, 80, 0]
expandTheNumber(560)  // [500, 60, 0]

