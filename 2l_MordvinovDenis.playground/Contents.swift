import Foundation


// Is even? function
func isEven(x:Int) -> Bool {
    
    if x % 2 == 0 {
        return true
    }else {
        return false
    }
}
isEven(x: 21)


// Divide by 3 with/without remainigs

func canDivideByThree(x: Int) -> Bool {
    if x % 3 == 0 {
        print ("\(x) can be divided by 3 without remainings")
        return true
    }else {
        print ("\(x) cannot be divided by 3 without remainings")
        return false
    }
}

// Create simple array contains 100 Ints.

var array:[Int] = []

for i in 0 ... 99 {
    array.append(i)
}

// Remove All even Ints and all numbers where n % == 0 from that array


for number in array {
    if number % 2 == 0 {
        let index = array.firstIndex(of: number)
        array.remove(at: index!) // We know that every single int represents at least once so we can force remove by index safely.
    } else if number % 3 == 0 {
        let index = array.firstIndex(of: number)
        array.remove(at: index!)
    }
}

// Array of Fibonnaci


func generateArrayOfFib(number: Int) -> [UInt]{
    // WARN: This function works only till 91 element after that - UInt overflow (Wich means Int64 can't handle it)
    var sequence:[UInt] = [0, 1]
    for _ in 0...number{
        let first = sequence[sequence.count - 2]
        let second = sequence.last!
        sequence.append(first + second)
    }
    return sequence
}

generateArrayOfFib(number: 91)

// Prime numbers:

var primes: [Int] = []

for n in 2...100 {
    if primes.allSatisfy({ n % $0 != 0 }) {
        primes.append(n)
    }
}
print(primes)
