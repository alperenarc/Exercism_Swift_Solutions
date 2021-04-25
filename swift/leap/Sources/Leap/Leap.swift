//Question

//Given a year, report if it is a leap year.
//
//The tricky thing here is that a leap year in the Gregorian calendar occurs:
//For example, 1997 is not a leap year, but 1996 is. 1900 is not a leap year, but 2000 is.
//
//If your language provides a method in the standard library that does this look-up, pretend it doesn't exist and implement it yourself.

class Year {

    var year: Int
    init(calendarYear: Int) {
        self.year = calendarYear
    }

    var isLeapYear: Bool {
        if year % 400 == 0 {
            return true

        } else if year % 100 == 0 {
            return false

        } else {
            return year % 4 == 0
        }
    }
}
