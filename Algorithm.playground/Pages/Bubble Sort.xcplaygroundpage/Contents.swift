

extension Array where Element: Comparable {
    mutating func bubbleSort() -> [Element] {
        for i in 0..<self.count {
            for j in i..<self.count {
                if self[i] > self[j] {
                    (self[i], self[j]) = (self[j], self[i])
                }
            }
        }
        
        return self
    }
}


var array = [1, 4, 2, 3, 8, 5, 6, 4, 2]
print(array.bubbleSort())
