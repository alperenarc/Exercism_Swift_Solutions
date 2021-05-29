//Solution goes in Sources

struct ETL {
    static func transform(_ old: [Int: [String]]) -> [String: Int] {
        var transforMap = [String: Int]()
        for item in old {
            for value in item.value {
                transforMap[value.lowercased()] = item.key
            }
        }
        return transforMap
    }
}
