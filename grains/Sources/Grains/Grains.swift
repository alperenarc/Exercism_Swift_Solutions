//Calculate the number of grains of wheat on a chessboard given that the number on each square doubles.
//
//There once was a wise servant who saved the life of a prince. The king promised to pay whatever the servant could dream up. Knowing that the king loved chess, the servant told the king he would like to have grains of wheat. One grain on the first square of a chess board. Two grains on the next. Four on the third, and so on.
//
//There are 64 squares on a chessboard.
//
//Write code that shows:
//
//how many grains were on each square, and
//the total number of grains


// "Input[\()] invalid. Input should be between 1 and 64 (inclusive)" Error Type

import Foundation

struct Grains {
    static let total = UInt64.max

    static func square(_ squareCount: Int) throws -> UInt {

        if squareCount <= 0 {
            throw GrainsError.inputTooLow(message: "Input[\(squareCount)] invalid. Input should be between 1 and 64 (inclusive)")
        } else if squareCount > 64 {
            throw GrainsError.inputTooHigh(message: "Input[\(squareCount)] invalid. Input should be between 1 and 64 (inclusive)")
        }
        
        let inTotal = pow(2.0, Double(squareCount) - 1)
        
        return UInt(inTotal)
    }

    enum GrainsError: Error {
        case inputTooLow(message: String)
        case inputTooHigh(message: String)
    }
}
