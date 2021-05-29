struct TwelveDaysSong {
    static func sing() -> String {
        return verses(1, 12)
    }

    static func verses(_ first: Int, _ last: Int) -> String {
        return stride(from: first, through: last, by: 1)
            .map { verse($0) }
            .joined(separator: "\n")
    }

    static func verse(_ verse: Int) -> String {
        return prelude(verse) +
            stride(from: verse, to: 0, by: -1)
            .map { gift($0, of: verse) }
            .joined(separator: ", ")
            + "."
    }

    static func prelude(_ verse: Int) -> String {
        return "On the \(ordinal(verse)) day of Christmas my true love gave to me: "
    }

    static func ordinal(_ verse: Int) -> String {
        switch verse {
        case 1: return "first"
        case 2: return "second"
        case 3: return "third"
        case 4: return "fourth"
        case 5: return "fifth"
        case 6: return "sixth"
        case 7: return "seventh"
        case 8: return "eighth"
        case 9: return "ninth"
        case 10: return "tenth"
        case 11: return "eleventh"
        case 12: return "twelfth"
        default: return ""
        }
    }

    static func gift(_ verse: Int, of count: Int) -> String {
        switch verse {
        case 1: return (count > 1 ? "and " : "") + "a Partridge in a Pear Tree"
        case 2: return "two Turtle Doves"
        case 3: return "three French Hens"
        case 4: return "four Calling Birds"
        case 5: return "five Gold Rings"
        case 6: return "six Geese-a-Laying"
        case 7: return "seven Swans-a-Swimming"
        case 8: return "eight Maids-a-Milking"
        case 9: return "nine Ladies Dancing"
        case 10: return "ten Lords-a-Leaping"
        case 11: return "eleven Pipers Piping"
        case 12: return "twelve Drummers Drumming"
        default: return ""
        }
    }
}
