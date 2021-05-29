//Bob is a lackadaisical teenager. In conversation, his responses are very limited.
//
//Bob answers 'Sure.' if you ask him a question.
//
//He answers 'Whoa, chill out!' if you yell at him.
//
//He says 'Fine. Be that way!' if you address him without actually saying anything.
//
//He answers 'Whatever.' to anything else.
import Foundation
struct Bob {
    static func hey(_ sentence: String) -> String {

        // sentence contains ?
        // if sentence end of with "?" this is a Question
        // if sentence is fully Uppercase this is a Yell
        // if sentence contains "" or created fully " "

        let mySentence = sentence.trimmingCharacters(in: .whitespaces)

        if mySentence == "" {
            return Answers.AddressHim.rawValue
        } else if mySentence.isUpper() {
            return Answers.Yell.rawValue
        } else if mySentence.last == "?" {
            return Answers.Question.rawValue
        } else {
            return Answers.Anything.rawValue
        }
    }
}

enum Answers: String {
    case Question = "Sure."
    case Yell = "Whoa, chill out!"
    case AddressHim = "Fine. Be that way!"
    case Anything = "Whatever."
}

extension String {
    public func isUpper() -> Bool
    {
        let characterString = String(self)
        return (characterString == characterString.uppercased()) && (characterString != characterString.lowercased())
    }
}
