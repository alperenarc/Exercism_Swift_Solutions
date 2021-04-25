
//One for you, one for me.
//One for Alice, one for me.


func twoFer(name person: String? = nil) -> String {
    if person != nil {
        return "One for \(person!), one for me."
    } else {
        return "One for you, one for me."
    }
}


