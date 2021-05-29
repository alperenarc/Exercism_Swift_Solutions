final class SimulatedRobot {

    enum Orientation {
        case north
        case east
        case south
        case west
    }

    enum Instruction: String {
        case turnLeft = "L"
        case turnRight = "R"
        case advance = "A"
    }

    var bearing: Orientation = .north
    var coordinates: [Int] = []

    func at(x: Int, y: Int) {
        self.coordinates = [x, y]
    }

    func place(x: Int, y: Int, direction: Orientation) {
        self.coordinates = [x, y]
        self.bearing = direction
    }

    func orient(_ orientation: Orientation) {
        self.bearing = orientation
    }

    func instructions(_ instructions: String) -> [Instruction] {
        return instructions.compactMap { Instruction(rawValue: String($0)) }
    }

    func evaluate(_ instruction: String) {
        instruction.forEach { (character) in
            guard let instruction = Instruction(rawValue: String(character)) else {
                return
            }

            switch instruction {
            case .advance:
                self.advance()
            case .turnLeft:
                self.turnLeft()
            case .turnRight:
                self.turnRight()
            }
        }
    }

    func advance() {
        guard let x = coordinates.first, let y = coordinates.last else {
            return
        }

        switch self.bearing {
        case .north:
            self.coordinates = [x, y + 1]
        case .east:
            self.coordinates = [x + 1, y]
        case .south:
            self.coordinates = [x, y - 1]
        case .west:
            self.coordinates = [x - 1, y]
        }
    }

    func turnLeft() {
        switch self.bearing {
        case .north:
            self.bearing = .west
        case .east:
            self.bearing = .north
        case .south:
            self.bearing = .east
        case .west:
            self.bearing = .south
        }
    }

    func turnRight() {
        switch self.bearing {
        case .north:
            self.bearing = .east
        case .east:
            self.bearing = .south
        case .south:
            self.bearing = .west
        case .west:
            self.bearing = .north
        }
    }

}
