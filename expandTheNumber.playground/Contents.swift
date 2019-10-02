import Foundation

func expandTheNumber(_ number: Int) -> [Int] {
    
    // The idea is to convert the integer into a string and then iterate backwards through
    // each character in the string (of length ".count").
    // Each character is added to the array but first it is turned back into an integer
    // and then it is briefly turned into a double in order to use the "pow" fuction.
    // The pow function multiplies it by the appropriate factor of 10.
    // The array is then reversed and returned.
    
    let numberString = String(number)
    let digits = numberString.count

    var array: [Int] = []
    for n in 1...digits {
        let digitChar = numberString[numberString.index(numberString.startIndex, offsetBy: (digits - n))]
        if let number = Int(String(digitChar)) {
            let entry = Double(number) * (pow(10.0, Double(n - 1)))
            array.append(Int(entry))
        }
    }
    return array.reversed()
}

expandTheNumber(199)  // [100, 90, 9]
expandTheNumber(100)  // [100, 0, 0]
expandTheNumber(0)    // [0]
expandTheNumber(562)  // [500, 60, 2]
expandTheNumber(5280) // [5000, 200, 80, 0]
expandTheNumber(560)  // [500, 60, 0]


