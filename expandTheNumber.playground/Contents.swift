import Foundation

func expandTheNumber(_ number: Int) -> [Int] {
    let stringRepresentation = String(number)
    var holder: [Int] = []
    for (index, str) in stringRepresentation.reversed().enumerated() {
        var new = String(str)
        for time in 0...index {
            if time == 0 {
                continue
            }
            new += "0"
        }
        
        if let number = Int(new) {
            holder.append(number)
        }
        
    }
    
    return holder.reversed()
    
}

expandTheNumber(199) // [100, 90, 9]
expandTheNumber(100) // [100, 0, 0]
expandTheNumber(0) // [0]
expandTheNumber(562) // [500, 60, 2]
expandTheNumber(5280) // [5000, 200, 80, 0]
expandTheNumber(560) // [500, 60, 0]
