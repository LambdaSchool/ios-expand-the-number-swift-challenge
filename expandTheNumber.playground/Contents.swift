import Foundation

func expandTheNumber(_ number: Int) -> [Int] {
    // here we are creating a variable that is the type of the argument we are passing through
    var number = number
    //here we make an index and give it the value of ten.
    var TenIndex = 10
    //this is an array that will hold all of the numbers once they are depricated
    var intArray: [Int] = []
// if number == 0, append 0 and the function is finished.
    if number == 0 {
        intArray.append(0)
        //if not, we make a repeat while loop.
    } else {
        repeat {
            //appending number is the modulo of the ten index from the number chosen. it gives us the remainder.
            let appendingNumber = number % TenIndex
            //here we append that number. This is essentially moudulating the appending number by ten. which gives us the tens place value
            intArray.append(appendingNumber)
            // then we grab the number, and assign it to the value of the passed in parameter minus the appending number.
            number = number - appendingNumber
            //we then mulitply this number by ten to give the depricated number its last value
            TenIndex = TenIndex * 10
            //we do this as long as the number is more than 10.
        } while number > 10
    }
    //then we return the array, but reverse it to iterate the array in order! 
    return intArray.reversed()
}

expandTheNumber(199)  // [100, 90, 9]
expandTheNumber(100)  // [100, 0, 0]
expandTheNumber(0)    // [0]
expandTheNumber(562)  // [500, 60, 2]
expandTheNumber(5280) // [5000, 200, 80, 0]
expandTheNumber(560)  // [500, 60, 0]


