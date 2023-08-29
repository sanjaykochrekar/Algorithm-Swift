// Sort array of distict 3 elements (0, 1, 2)

extension Array where Element : Comparable {
    mutating func sort(smaller: Element, greater: Element) {
        var firstIndex: Int = 0
        var lastindex: Int = self.count - 1
        for (index, _) in self.enumerated() {
            if self[firstIndex] == smaller {
                (self[firstIndex], self[index]) = (self[index], self[firstIndex])
                firstIndex = firstIndex + 1
            }
            if self[lastindex] == greater {
                (self[lastindex], self[index]) = (self[index], self[lastindex])
                lastindex = lastindex - 1
            }
        }
    }
}



var array = [0,2,1,0, 1,0, 1,2,1,0]

array.sort()
var array2 = ["a", "c", "a", "b"]
var array1 = [0, 2, 0, 1,2]

array2.sort()
array1.sort()
