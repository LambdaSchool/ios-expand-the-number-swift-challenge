import Foundation

func expandTheNumber(_ number: Int) -> [Int] {
    var numString = String(number)
    var numPlaces = numString.count
    var numPlacesMinus = numPlaces - 1
    var solutionArray: [Int]  = []
    
    for i in (0 ... numPlacesMinus) {
        var value = 0
        
        var place =
        
        
        
        
        
    }
        
    
    
    
    return resultsArray 
}

expandTheNumber(199)  // [100, 90, 9]
expandTheNumber(100)  // [100, 0, 0]
expandTheNumber(0)    // [0]
expandTheNumber(562)  // [500, 60, 2]
expandTheNumber(5280) // [5000, 200, 80, 0]
expandTheNumber(560)  // [500, 60, 0] */

// Formula: Num % (place * 10) - (Num % place)

// Psuedo-Code
// Length of num = number of places. Generate New list = [1*1, 1 * 10, 1*100] based on length.count
// iterate over string number at index[length.count]
// first arg = num[index]  % place[index] * 10
// second arg = num[index] % place[index]
// result = first arg - second arg
// append result to resultsArray[]
// iterate to index 1 till end of length.count repeating the above operation
// return resultsArray
