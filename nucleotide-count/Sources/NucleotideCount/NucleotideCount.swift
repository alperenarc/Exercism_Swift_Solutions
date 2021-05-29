//Given a single stranded DNA string, compute how many times each nucleotide occurs in the string.
//
//The genetic language of every living thing on the planet is DNA. DNA is a large molecule that is built from an extremely long sequence of individual elements called nucleotides. 4 types exist in DNA and these differ only slightly and can be represented as the following symbols: 'A' for adenine, 'C' for cytosine, 'G' for guanine, and 'T' thymine.
//
//Here is an analogy:
//
//twigs are to birds nests as
//nucleotides are to DNA as
//legos are to lego houses as
//words are to sentences as...

struct DNA {
    var nucleotidDictionary: [String: Int] = ["T": 0, "A": 0, "C": 0, "G": 0]

    init?(strand: String) {
        for nucleotid in strand {
            switch nucleotid {
            case "A", "C", "G", "T":
                nucleotidDictionary[String(nucleotid)]! += 1
            default:
                return nil
            }
        }
    }

    func count(_ nucleotid: String) -> Int {
        let nucleotidCount = nucleotidDictionary[nucleotid]
        return nucleotidCount ?? 0
    }

    func counts() -> [String: Int] {
        return nucleotidDictionary
    }
}

