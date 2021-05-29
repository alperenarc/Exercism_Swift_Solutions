struct WordCount {
    let words: [String]
    
    init(words: String) {
        self.words = words
            .lowercased()
            .filter{$0.isLetter || $0.isNumber || $0 .isWhitespace}
            .split(separator: " ")
            .map(String.init)
    }
    
    func count() -> [String : Int] {
        var wordCounts = [String : Int]()
        for word in words {
            wordCounts[String(word), default: 0] += 1
        }
        return wordCounts
    }
}
