enum BinarySearchError: Error {
    case unsorted
}

struct BinarySearch {
    var list: [Int] = []

    init(_ list: [Int]) throws {
        guard list == list.sorted() else {
            throw BinarySearchError.unsorted
        }

        self.list = list
    }

    func searchFor(_ element: Int, lastMiddle: Int = 0) -> Int? {
        guard list[middle] != element else {
            return middle + lastMiddle
        }

        var newList: [Int]
        var offSet: Int = lastMiddle

        if list[middle] > element {
            newList = Array(list[0...middle])
        } else {
            newList = Array(list[middle...list.count - 1])
            offSet = middle
        }

        guard list != newList else {
            return nil
        }

        return try! BinarySearch(newList).searchFor(element, lastMiddle: offSet)
    }

    var middle: Int {
        return list.count / 2
    }
}
