import Foundation

//extension Int: IteratorProtocol{
//    public typealias Element = Int
//
//}

func expandTheNumber(_ number: Int) -> [Int] {
    
    
    // need to iterate over Int as an array.  Convert int to a string array? If index 0, return number in place, for all other indices multiply index by 10, update array
    var newIntArray: [Int] = []
    
 let numberString = String(number)
    print(numberString)
    
    for character in numberString{
        let newNumber = character.hashValue
        newIntArray.append(newNumber)
    }
    
//    if newIntArray[0]{
//
//    }
    
    
    
    
    
    return newIntArray
    
}

expandTheNumber(199)  // [100, 90, 9]
expandTheNumber(100)  // [100, 0, 0]
expandTheNumber(0)    // [0]
expandTheNumber(562)  // [500, 60, 2]
expandTheNumber(5280) // [5000, 200, 80, 0]
expandTheNumber(560)  // [500, 60, 0]
