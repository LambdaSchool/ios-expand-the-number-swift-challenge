import Foundation

func expandTheNumber(_ number: Int) -> [Int] {
    let numberString = String(number)
    let digits = numberString.count
    
    var array: [Int] = []
    for n in 0...digits {
        let digit = numberString[numberString.index(numberString.startIndex, offsetBy: (numberString.count - n))]
        let number = Int(digit)
        array.append(number)
    }
    }
    

//    switch digits {
//    case 0...5:


}

expandTheNumber(199)  // [100, 90, 9]
expandTheNumber(100)  // [100, 0, 0]
expandTheNumber(0)    // [0]
expandTheNumber(562)  // [500, 60, 2]
expandTheNumber(5280) // [5000, 200, 80, 0]
expandTheNumber(560)  // [500, 60, 0]

let numb = 1000
let numbString = String(numb)
numbString.count
numbString[numbString.startIndex]
numbString[numbString.index(numbString.startIndex, offsetBy: (numbString.count - 1))]


