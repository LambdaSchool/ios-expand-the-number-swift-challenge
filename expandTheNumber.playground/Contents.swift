import Foundation

func expandTheNumber(_ number: Int) -> [Int] {
    var numberArrays = [Int]()
     let x = number % 10
    switch number {
    case 0...9:
        numberArrays.append(number)
    case 10...100:
       
        numberArrays.append(number - x)
        numberArrays.append(x)
    case 101...999:
        let y = number % 100
        let z = y - (y %  10)
        numberArrays.append(number - y)
        
        numberArrays.append(z)
        numberArrays.append(y - z)
        
    case 1000... :
        let z = number % 1000
        let t = z - (z % 100)
        let h = t - (t % 10)
        numberArrays.append(number - z)
        numberArrays.append(t)
        numberArrays.append(z-t)
        numberArrays.append(t-h )
    
    default:
        break
    }
    return numberArrays
}

expandTheNumber(5280)
expandTheNumber(6275)
expandTheNumber(62)
expandTheNumber(562)
expandTheNumber(300)
expandTheNumber(199)  // [100, 90, 9]
expandTheNumber(100)  // [100, 0, 0]
expandTheNumber(0)    // [0]
expandTheNumber(562)  // [500, 60, 2]
expandTheNumber(5280) // [5000, 200, 80, 0]
expandTheNumber(560)  // [500, 60, 0]
