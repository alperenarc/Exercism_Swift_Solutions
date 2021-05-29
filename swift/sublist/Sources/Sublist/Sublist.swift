//Given two lists determine if the first list is contained within the second list, if the second list is contained within the first list, if both lists are contained within each other or if none of these are true.
//
//Specifically, a list A is a sublist of list B if by dropping 0 or more elements from the front of B and 0 or more elements from the back of B you get a list that's completely equal to A.

import Foundation

enum listType {
    case sublist, superlist, equal, unequal
}

func classifier (listOne: [Int], listTwo: [Int]) -> listType {
    let str1 = listOne.map{String($0)}.joined(separator: ",")
    let str2 = listTwo.map{String($0)}.joined(separator: ",")
    let isListOneLonger: Bool = listOne.count > listTwo.count
    
    if str1 == str2 {
        return .equal
    } else if str2.isEmpty || (isListOneLonger && str1.contains(str2)) {
        return .superlist
    } else if str1.isEmpty || (!isListOneLonger && str2.contains(str1)) {
        return .sublist
    } else {
        return .unequal
    }
}
