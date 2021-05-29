import Foundation

class Queens {
    enum InitError: Error {
        case incorrectNumberOfCoordinates
        case invalidCoordinates
        case sameSpace
    }

    let white: [Int]
    let black: [Int]

    var description: String {
        var res: [[String]] = Array(repeating: Array(repeating: "_", count: 8), count: 8)
        res[white[0]][white[1]] = "W"
        res[black[0]][black[1]] = "B"
        return res.map({ $0.joined(separator: " ") }).joined(separator: "\n")
    }

    var canAttack: Bool {
        let x = Float(white[0] - black[0])
        let y = Float(white[1] - black[1])
        return x == 0 || y == 0 || abs(y / x) == 1
    }

    init(white: [Int] = [0, 3], black: [Int] = [7, 3]) throws {
        if [white, black].contains(where: { $0.count != 2 }) {
            throw InitError.incorrectNumberOfCoordinates }
        if [white, black].contains(where: {
            $0.contains(where: { $0 < 0 || $0 > 7 }) }) { throw InitError.invalidCoordinates }
        if white == black { throw InitError.sameSpace }
        self.white = white
        self.black = black
    }
}
