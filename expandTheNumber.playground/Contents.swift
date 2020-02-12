import Foundation

func expandTheNumber(_ number: Int)  {
    
    let string = "\(number)"
    let digits = string.compactMap{ $0.wholeNumberValue!}
    
    for index in digits.enumerated() {
        print(index.offset)
        let number = index.element * (10 * index.offset)
        print(number)
    }
}

expandTheNumber(199)  // [100, 90, 9]
//expandTheNumber(100)  // [100, 0, 0]
//expandTheNumber(0)    // [0]
//expandTheNumber(562)  // [500, 60, 2]
//expandTheNumber(5280) // [5000, 200, 80, 0]
//expandTheNumber(560)  // [500, 60, 0]

