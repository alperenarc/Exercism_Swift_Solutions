//Implement a clock that handles times without dates.
//
//You should be able to add and subtract minutes to it.
//
//Two clocks that represent the same time should be equal to each other.

final class Clock: Equatable {
    var hour: Int = 0
    var minute: Int = 0

    init(hours: Int, minutes: Int?) {
        self.hour = hours
        self.minute = minutes ?? 0
    }
    
    init(hours: Int) {
        self.hour = hours
    }

    func add(minutes: Int) -> Clock {
        self.minute += minutes
        return self
    }

    func subtract(minutes: Int) -> Clock {
        self.minute -= minutes
        return self
    }

    static func == (Clock1: Clock, Clock2: Clock) -> Bool {
        Clock1.description == Clock2.description ? true : false
    }
}

extension Clock: CustomStringConvertible {
    var description: String {
        while minute >= 60 {
            hour += 1
            minute -= 60
        }
        while minute < 0 {
            hour -= 1
            minute += 60
        }
        while hour >= 24 {
            hour -= 24
        }
        while hour < 0 {
            hour += 24
        }
        var h = "\(hour)"
        var m = "\(minute)"
        if(hour < 10)
        {
            h = "0" + h
        }
        if(minute < 10)
        {
            m = "0" + m
        }
        return h + ":" + m
    }
}
