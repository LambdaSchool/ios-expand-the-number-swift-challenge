import Foundation

func expandTheNumber(_ number: Int) -> [Int] {

    guard number > 0 else { return [0] }
    var answer: [Int] = []
    var i = 1
    
    while true {
        let x = number % Int(pow(Double(10), Double(i)))
        let sum = answer.reduce(0) { (result, next) -> Int in
            return result + next
        }
        
        let result = x - sum
        if sum >= number {
            break
        }
        
        answer.append(result)
        i += 1
    }
    return answer.reversed()
}

expandTheNumber(199)  // [100, 90, 9]
expandTheNumber(100)  // [100, 0, 0]
expandTheNumber(0)    // [0]
expandTheNumber(562)  // [500, 60, 2]
expandTheNumber(5280) // [5000, 200, 80, 0]
expandTheNumber(560)  // [500, 60, 0]

