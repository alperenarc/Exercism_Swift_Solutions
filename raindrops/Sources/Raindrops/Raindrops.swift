//Convert a number to a string, the contents of which depend on the number's factors.
//
//If the number has 3 as a factor, output 'Pling'.
//If the number has 5 as a factor, output 'Plang'.
//If the number has 7 as a factor, output 'Plong'.
//If the number does not have 3, 5, or 7 as a factor, just pass the number's digits straight through.

struct Raindrops {
    var sounds: String = ""
    init(_ number: Int) {
        if number % 3 == 0 { sounds.append("Pling") }
        if number % 5 == 0 { sounds.append("Plang") }
        if number % 7 == 0 { sounds.append("Plong") }
        if sounds.isEmpty { sounds = "\(number)" }
    }
}
