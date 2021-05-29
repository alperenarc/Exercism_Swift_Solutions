struct IsbnVerifier {
    
    private static let versionNumber = 10
    
    static func isValid(_ numberString: String) -> Bool {
        let number = numberString.filter({ $0 != "-" }).map { String($0) }
        
        if number.count != versionNumber {
            return false
        }
        
        var sum = 0
        for (index, digitString) in number.enumerated() {
            if let digit = Int(digitString) {
                sum += digit * (number.count - index)
            } else if digitString == "X",
                number.count - 1 == index {
                sum += versionNumber
            } else {
                return false
            }
        }
        return sum % 11 == 0
    }
}
