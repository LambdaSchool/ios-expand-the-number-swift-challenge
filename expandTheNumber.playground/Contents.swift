import Foundation

func expandTheNumber(_ number: Int) -> [Int] {
    
    let number = number
    let string = String(number)
    var count = string.count - 1
    var resultArray = [Int]()
    for number in string {
        let result = String(repeating: "0", count: count)
        let fullResult = String(number) + result
        if let integer = Int(fullResult) {
            resultArray.append(integer)
        }
        count -= 1
    }
    return resultArray
}

expandTheNumber(199)  // [100, 90, 9]
expandTheNumber(100)  // [100, 0, 0]
expandTheNumber(0)    // [0]
expandTheNumber(562)  // [500, 60, 2]
expandTheNumber(5280) // [5000, 200, 80, 0]
expandTheNumber(560)  // [500, 60, 0]
