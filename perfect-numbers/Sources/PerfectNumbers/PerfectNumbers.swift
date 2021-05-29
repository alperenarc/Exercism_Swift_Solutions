import Foundation

struct NumberClassifier {
    enum NumberType {
        case perfect, deficient, abundant
    }
    
    let number : Int
    var classification : NumberType {
        let aliquotSum = (1...number - 1).filter { number % $0 == 0 }.reduce(0, +)
        if aliquotSum == number {
            return .perfect
        } else if aliquotSum < number {
            return .deficient
        } else {
            return .abundant
        }
    }
    
    init(number: Int) {
        self.number = number
    }
}
