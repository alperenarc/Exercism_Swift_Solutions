import Foundation

enum Allergy: Int, CaseIterable {
    case eggs = 1
    case peanuts = 2
    case shellfish = 4
    case strawberries = 8
    case tomatoes = 16
    case chocolate = 32
    case pollen = 64
    case cats = 128
}

struct Allergies {
    var score: Int

    init(_ score: Int) {
        self.score = score
    }

    init(_ score: UInt) {
        self.score = Int(score)
    }

    func hasAllergy(_ targetAllergy: Allergy) -> Bool {
        var score = self.score
        for currentAllergy in Allergy.allCases.reversed() {
            if score - currentAllergy.rawValue >= 0 {
                if currentAllergy == targetAllergy {
                    return true
                } else {
                    score -= currentAllergy.rawValue
                }
            }
        }
        return false
    }
}
