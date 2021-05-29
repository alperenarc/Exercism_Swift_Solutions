enum CollatzConjectureError: Error {
  case invalidValue
}

struct CollatzConjecture {
  
  static func steps(_ number: Int) throws -> Int {
    guard number > 0 else {
      throw CollatzConjectureError.invalidValue
    }
    if number == 1 {
      return 0
    }
    let nextNumber = number.isMultiple(of: 2) ? number/2 : number * 3 + 1
    return try 1 + steps(nextNumber)
  }
}
