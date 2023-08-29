// Sort array of distict 3 elements (0, 1, 2)

extension Array where Element : Comparable {
    mutating func sort012(smaller: Element, greater: Element) {
        var firstIndex: Int = 0
        var lastindex: Int = self.count - 1
        
        for (index, _) in self.enumerated() {
            if self[index] == smaller {
                (self[firstIndex], self[index]) = (self[index], self[firstIndex])
                firstIndex = firstIndex + 1
            }
        }
        
        for (index, _) in self.enumerated() {
            if self[self.count - 1 - index] == greater {
                (self[lastindex], self[self.count - 1 - index]) = (self[self.count - 1 - index], self[lastindex])
                lastindex = lastindex - 1
            }
        }
    }
}



var array = [0, 2, 1, 0, 1, 0, 1, 2, 1, 0, 2]

array.sort012(smaller: 0, greater: 2)
print(array)


var array2 = ["a", "c", "a", "b"]
var array1 = [0, 2, 0, 1,2]

array2.sort012(smaller: "a", greater: "c")
print(array2)

array1.sort012(smaller: 0, greater: 2)
print(array1)
