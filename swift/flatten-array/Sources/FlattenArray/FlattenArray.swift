//Take a nested list and return a single flattened list with all values except nil/null.
//
//The challenge is to write a function that accepts an arbitrarily-deep nested list-like structure and returns a flattened structure without any nil/null values.
//
//For Example
//
//input: [1,[2,3,null,4],[null],5]
//
//output: [1,2,3,4,5]

func flattenArray<Element>(_ inputList:[Any?]) -> [Element] {
    var result = [Element]()

    for element in inputList {
        if let array = element as? [Any] {
            result += flattenArray(array)
        }
        else if let nonNil = element as? Element {
            result.append(nonNil)
        }
    }
    return result
}