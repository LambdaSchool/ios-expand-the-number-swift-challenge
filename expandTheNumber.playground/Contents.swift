import Foundation

func expandTheNumber(_ number: Int) -> [Int] {
    var number = number
    var TenIndex = 10
    var intArray: [Int] = []

    if number == 0 {
        intArray.append(0)
    } else {
        repeat {
            let appendingNumber = number % TenIndex
            intArray.append(appendingNumber)
            number = number - appendingNumber
            TenIndex = TenIndex * 10
        } while number > 10
    }
    return intArray.reversed()
}

expandTheNumber(199)  // [100, 90, 9]
expandTheNumber(100)  // [100, 0, 0]
expandTheNumber(0)    // [0]
expandTheNumber(562)  // [500, 60, 2]
expandTheNumber(5280) // [5000, 200, 80, 0]
expandTheNumber(560)  // [500, 60, 0]


