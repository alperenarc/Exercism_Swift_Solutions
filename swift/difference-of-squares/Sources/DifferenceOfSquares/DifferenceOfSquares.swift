//Find the difference between the square of the sum and the sum of the squares of the first N natural numbers.
//
//The square of the sum of the first ten natural numbers is (1 + 2 + ... + 10)² = 55² = 3025.
//
//The sum of the squares of the first ten natural numbers is 1² + 2² + ... + 10² = 385.
//
//Hence the difference between the square of the sum of the first ten natural numbers and the sum of the squares of the first ten natural numbers is 3025 - 385 = 2640.

class Squares {
    var n: Int
    var differenceOfSquares: Int
    var sumOfSquares: Int
    var squareOfSum: Int

    init(_ n: Int) {
        self.n = n
        let arr = Array(0...n)

        sumOfSquares = arr.map({ number in number * number }).reduce(0, +)
        squareOfSum = arr.reduce(0, +) * arr.reduce(0, +)
        differenceOfSquares = squareOfSum - sumOfSquares
    }
}
