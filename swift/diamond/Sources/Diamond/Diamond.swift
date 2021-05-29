import Foundation
struct Diamond {
    
    static func makeDiamond(letter: Character) -> [String] {

        let alphabet = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
        let letters = alphabet[0...alphabet.index(of: letter)!]
        
        var diamond = [String]()
        var line = ""

        func addPadding(_ numSpaces : Int) { for _ in 0..<numSpaces { line += " " } }
        func addLetter(_ l: Character) { line += String(l) }

        for (idx, letter) in letters.enumerated() {
            line = ""
            let outerPadding = letters.count - (idx + 1)
            let letterCount = idx == 0 ? 1 : 2
            let innerPadding = ((letters.count * 2) - 1) - (2 * outerPadding) - letterCount
            
            addPadding(outerPadding)
            addLetter(letter)
            if (innerPadding > 0) {
                addPadding(innerPadding)
                addLetter(letter)
            }
            addPadding(outerPadding)
            diamond.append(line)
        }

        diamond += diamond.dropLast().reversed()
        return diamond
    }
}
