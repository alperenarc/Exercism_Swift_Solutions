//
//Given a number, find the sum of all the unique multiples of particular numbers up to but not including that number.
//
//If we list all the natural numbers below 20 that are multiples of 3 or 5, we get 3, 5, 6, 9, 10, 12, 15, and 18.
//
//The sum of these multiples is 78. //
import Foundation
struct SumOfMultiples {
    static func toLimit(_ topNumber: Int, inMultiples: [Int]) -> Int {
        var sumList = [Int]()
        var changableInMultiples = inMultiples
        
        guard topNumber != 0 else { return 0 }
        changableInMultiples.removeAll { $0 == 0 }
        
        for num in changableInMultiples {
            for i in 1...topNumber {
                if i * num < topNumber {
                    sumList.append(i * num)
                } else {
                    break
                }
            }
        }
        // Convert array to set for unique numbers
        let nsArray = NSArray(array: sumList)
        let set = Set(nsArray as! [Int])
        // get sum array
        return set.reduce(0, +)
    }
}
