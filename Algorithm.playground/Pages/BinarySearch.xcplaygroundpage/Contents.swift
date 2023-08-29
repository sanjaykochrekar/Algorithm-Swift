// Implement Binary search on array of sorted element


// Solution using custome function

class BinarySearch {
    static func find<T: Comparable>(_ element: T ,in array: [T]) -> Int? {
        var first: Int = 0
        var last: Int = array.count
        var mid: Int = 0
        
        while last > first {
            mid = (last + first) / 2
            if array[mid] == element {
                return mid
            } else if element < array[mid] {
                last = mid
            } else if  mid == last || mid == first {
                return nil
            }
            else if element > array[mid] {
                first = mid
            }
           
        }
        
        return nil
    }
}

dump(BinarySearch.find(3, in: [1, 2, 3, 4, 5, 6, 7]))//2
dump(BinarySearch.find(1, in: [1, 2, 3, 4, 5, 6, 7]))//0
dump(BinarySearch.find(7, in: [1, 2, 3, 4, 5, 6, 7]))//6
dump(BinarySearch.find(6, in: [1, 2, 3, 4, 5, 6, 7]))//5
dump(BinarySearch.find(4, in: [1, 2, 3, 4, 5, 6, 7]))//3
dump(BinarySearch.find(4, in: [1, 2, 3, 4, 5, 6, 7, 8]))//3
dump(BinarySearch.find(5, in: [1, 2, 3, 4, 5, 6, 7, 8]))//4
dump(BinarySearch.find(9, in: [1, 2, 3, 4, 5, 6, 7, 8]))//nil
dump(BinarySearch.find(0, in: [1, 2, 3, 4, 5, 6, 7, 8]))//nil


// Solution using custome Extension
extension Array where Element : Comparable {
    func find(_ element: Element) -> Int? {
        var first: Int = 0
        var last: Int = self.count
        var mid: Int = 0
        
        while last > first {
            mid = (last + first) / 2
            if self[mid] == element {
                return mid
            } else if element < self[mid] {
                last = mid
            } else if  mid == last || mid == first {
                return nil
            } else if element > self[mid] {
                first = mid
            }
           
        }
        
        return nil
    }
}


dump([1, 2, 3, 4, 5, 6, 7].find(3))//2
dump([1, 2, 3, 4, 5, 6, 7].find(1))//0
dump([1, 2, 3, 4, 5, 6, 7].find(7))//6
dump([1, 2, 3, 4, 5, 6, 7].find(6))//5
dump([1, 2, 3, 4, 5, 6, 7].find(4))//3
dump([1, 2, 3, 4, 5, 6, 7, 8].find(4))//3
dump([1, 2, 3, 4, 5, 6, 7, 8].find(5))//4
dump([1, 2, 3, 4, 5, 6, 7, 8].find(9))//nil
dump([1, 2, 3, 4, 5, 6, 7, 8].find(0))//nil
