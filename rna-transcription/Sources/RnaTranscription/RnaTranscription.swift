//Given a DNA strand, return its RNA complement (per RNA transcription).
//
//Both DNA and RNA strands are a sequence of nucleotides.
//
//The four nucleotides found in DNA are adenine (A), cytosine (C), guanine (G) and thymine (T).
//
//The four nucleotides found in RNA are adenine (A), cytosine (C), guanine (G) and uracil (U).
//
//Given a DNA strand, its transcribed RNA strand is formed by replacing each nucleotide with its complement:
//
//G -> C
//C -> G
//T -> A
//A -> U

class Nucleotide {
    let nucleotideType: String

    init(_ nucleotide: String) {
        self.nucleotideType = nucleotide
    }

    func complementOfDNA() throws -> String {
        var complement: String = ""

        for letter in nucleotideType {
            let nucleotide = findLetterComplement(letter)

            if nucleotide == letter {
                throw RnaTranscription.TranscriptionError.invalidNucleotide(message: "\(nucleotide) is not a valid Nucleotide")
            }
            complement = complement + String(nucleotide)
        }
        return complement
    }

    func findLetterComplement(_ char: Character) -> Character {
        switch char {
        case "G":
            return "C"
        case "C":
            return "G"
        case "T":
            return "A"
        case "A":
            return "U"
        default:
            return char
        }
    }
}

struct RnaTranscription {
    enum TranscriptionError: Error {
        case invalidNucleotide(message: String)

    }
}
