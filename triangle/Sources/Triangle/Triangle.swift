//Solution goes in Sources

struct Triangle {
    var kind: String

    init(_ first: Double, _ second: Double, _ third: Double) {
        let allBorders = [first, second, third]
        self.kind = ""
        if !isPossibleTriangle(borders: allBorders) {
            self.kind = "ErrorKind"
        } else if allBorders[0] == allBorders[1] && allBorders[1] == allBorders[2] {
            self.kind = "Equilateral"
        }
        else if allBorders[0] == allBorders[1] || allBorders[1] == allBorders[2] || allBorders[2] == allBorders[0] {
            self.kind = "Isosceles"
        }
        else {
            self.kind = "Scalene"
        }
    }
    func isPossibleTriangle(borders: [Double]) -> Bool {
        var borderArray = borders
        borderArray.sort(by: { $0 > $1 })
        if borderArray[1] + borderArray[2] <= borderArray[0] || borderArray[0] <= 0 || borderArray[1] <= 0 || borders[2] <= 0 {
            return false
        }
        return true
    }
}
