import Foundation


extension Array where Element : Hashable {
    func removeDuplicate() -> [Element] {
        var nonDuplicateArray: [Element] = []
        for (_, item) in self.enumerated() {
            if !nonDuplicateArray.contains(item) {
                nonDuplicateArray.append(item)
            }
        }
        
        return nonDuplicateArray
    }
}

var array = [1,2,3,4, 4, 5]

print(array.removeDuplicate())


//NSOrderedSet found in foundation
print(NSOrderedSet(array: array).array)
