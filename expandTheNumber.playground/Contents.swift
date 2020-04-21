import Foundation

func expandTheNumber(_ number: Int) -> [Int] {
    
    var numberArray: [Int] = []
    
    let ones = number % 10
    let tens = (number - ones) % 100
    let hundreds = (number - ones - tens) % 1000
    let thousands = (number - ones - tens - hundreds) % 10000
    
    
    if number > 999 {
        numberArray.append(thousands)
    }
    if number > 99 {
        numberArray.append(hundreds)
    }
    if number > 9 {
        numberArray.append(tens)
    }
    if number > 0 {
        numberArray.append(ones)
    }
    if number == 0 {
        numberArray.append(0)
    }

    
    return numberArray
}

expandTheNumber(199)  // [100, 90, 9]
expandTheNumber(100)  // [100, 0, 0]
expandTheNumber(0)    // [0]
expandTheNumber(562)  // [500, 60, 2]
expandTheNumber(5280) // [5000, 200, 80, 0]
expandTheNumber(560)  // [500, 60, 0]
