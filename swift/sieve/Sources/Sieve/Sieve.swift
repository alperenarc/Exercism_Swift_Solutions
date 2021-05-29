import Foundation

struct Sieve {
    private var limit: Int

    init(_ input: Int) {
        limit = input
    }

    var primes: [Int] {
        return sieve(arr: Array(2..<limit))
    }

    private func sieve(arr: [Int]) -> [Int] {
        if let first = arr.first {
            let sieved = arr.filter {
                return $0 % first == 0 ? false : true
            }
            return [first] + sieve(arr: sieved)
        } else { return [] }
    }
}
