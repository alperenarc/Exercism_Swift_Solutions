//Solution goes in Sources
final class Robot {
    var name: String
    init() {
        name = Robot.newName()
    }
    func resetName() {
        name = Robot.newName()
    }

    static func newName() -> String {
        var unique = ""
        let charCount = 2
        let digitCount = 3
        let chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        let digits = "1234567890"
        let charPart = String((0..<charCount).compactMap { _ in chars.randomElement() })
        let digiPart = String((0..<digitCount).compactMap { _ in digits.randomElement() })
        unique = charPart + digiPart
        return unique
    }
}
