extension Children {

    static func getAll() -> [String] {
        return Children.allCases.map { $0.rawValue }
    }
}

struct Garden {

    let gardens: [[Plant]]
    let children: [String]

    init(_ diagram: String, children: [String] = Children.getAll()) {
        self.gardens = diagram.split { $0 == "\n" }.map {
            Array($0).compactMap { Plant.init(rawValue: String($0)) }
        }
        self.children = children.sorted()
    }

    func plantsForChild(_ name: String) -> [Plant] {
        if let index = self.children.index(of: name) {
            let lowerBound = index * 2
            let upperBound = index * 2 + 2
            let plants = gardens[0][lowerBound..<upperBound] + gardens[1][lowerBound..<upperBound]
            return Array(plants)
        }
        return [Plant]()
    }
}

enum Plant: String {
    case clover = "C"
    case grass = "G"
    case radishes = "R"
    case violets = "V"
}

enum Children: String, CaseIterable {
    case alice = "Alice"
    case bob = "Bob"
    case charlie = "Charlie"
    case david = "David"
    case eve = "Eve"
    case fred = "Fred"
    case ginny = "Ginny"
    case harriet = "Harriet"
    case ileana = "Ileana"
    case joseph = "Joseph"
    case kincaid = "Kincaid"
    case larry = "Larry"
}
