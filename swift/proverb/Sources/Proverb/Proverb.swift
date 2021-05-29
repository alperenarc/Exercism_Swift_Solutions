//Solution goes in Sources
import Foundation

extension Array where Element == String {
   func recite() -> String {
        let template = "For want of a %first% the %second% was lost.\n"
        let lastLine = "And all for the want of a %first%."
        var result = ""
    
        if self.isEmpty {
            return result;
        }
        
        if self.count < 2 {
            return lastLine.replacingOccurrences(of: "%first%", with: self[0])
        }
        
        for index in 0...self.count - 2 {
            result += template
                .replacingOccurrences(of: "%first%", with: self[index])
                .replacingOccurrences(of: "%second%", with: self[index + 1])
            if index == self.count - 2 {
                result += lastLine.replacingOccurrences(of: "%first%", with: self[0])
            }
        }

        return result
    }
}
