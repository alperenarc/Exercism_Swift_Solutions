//Calculate the moment when someone has lived for 10^9 seconds.
//
//A gigasecond is 10^9 (1,000,000,000) seconds.

import Foundation

class Gigasecond {
    let willAddingSecond: TimeInterval = 1_000_000_000
    let dateFormatter = DateFormatter()
    var description: String = "" // For Return from initializer without initializing all stored properties

    init?(from birthday: String) {
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"

        if let formattedBirthday = dateFormatter.date(from: birthday) {
            let gigaAge = Date(timeInterval: willAddingSecond, since: formattedBirthday)
            description = dateFormatter.string(from: gigaAge)
        }
    }
}
