import Foundation

func expandTheNumber(_ number2: Int) -> [Int] {
    var number = number2 // number2 is a 'let' constant. Store locally so we can change it
    var result: [Int] = []
    var iteration = 1
    
    repeat {
        let remainder = number % 10
        
        print(remainder, iteration)
        result.insert(remainder * iteration, at: 0)

        // Prepare for next iteration
        number = number / 10
        iteration *= 10
    } while number > 0
    
    return result
}

expandTheNumber(199)  // [100, 90, 9]
expandTheNumber(100)  // [100, 0, 0]
expandTheNumber(0)    // [0]
expandTheNumber(562)  // [500, 60, 2]
expandTheNumber(5280) // [5000, 200, 80, 0]
expandTheNumber(560)  // [500, 60, 0]
