extension Array {
    func keep(_ callback: (Element) -> Bool) -> [Element] {
        var arr = [Element]()
        for item in self {
            if(callback(item)) {
                arr.append(item)
            }
        }
        return arr
    }

    func discard(_ callback: (Element) -> Bool) -> [Element] {
        return self.filter { !callback($0) }
    }
}
