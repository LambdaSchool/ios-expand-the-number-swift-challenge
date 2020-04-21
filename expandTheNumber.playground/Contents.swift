import Foundation

func expandTheNumber(_ number: Int) -> [Int] {
    
    // To be honest I found alot of help for this one, and it is very pretty, but, taking these concepts, I wanted to see what I could come up with on my own.
    var numberArray: [Int] = []
        let ones = number % 10
        let tens = (number - ones) % 100
        let hundreds = (number - tens - ones) % 1000
        let thousands = (number - hundreds - tens - ones) % 10000
        let tenThousands = (number - hundreds - tens - ones) % 100000
    
        if number > 9999 {
            numberArray.append(tenThousands)
        }
        if number > 999 {
            numberArray.append(thousands)
        }
        if number > 99 {
            numberArray.append(hundreds)
        }
        if number > 9 {
            numberArray.append(tens)
        }
        numberArray.append(ones)
 
    // And this is the ugly and ucompleted version of what I could conjure up. Almost there. 
    if number > 9 {
        let newNumber = number % 10
        numberArray.append(newNumber)
    }
    
    if number > 99 {
        let newNumber = (number - (number % 10)) % 100
        numberArray.append(newNumber)
    }
    
    if number > 999 {
        let newNumber = ((number - (number % 100)) - (number % 10)) % 1000
        numberArray.append(newNumber)
    }

    return numberArray.reversed()
}


expandTheNumber(199)  // [100, 90, 9]
expandTheNumber(100)  // [100, 0, 0]
expandTheNumber(0)    // [0]
expandTheNumber(562)  // [500, 60, 2]
expandTheNumber(5280) // [5000, 200, 80, 0]
expandTheNumber(560)  // [500, 60, 0]
