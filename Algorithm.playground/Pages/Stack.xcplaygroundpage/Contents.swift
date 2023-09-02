

/// First in First out
struct Stack <T> {
    private var array: [T]
    
    ///- Returns:The number of item in stack
    var count: Int {
        get {
            return array.count
        }
    }
    
    
    init() {
        self.init(array:[])
    }
    
    /// initializer take array as stack
    init(array: [T]) {
        self.array = array
    }
    
    
    /// Add items on the top of stack
    mutating func push(item: T) {
        array.append(item)
    }
    
    
    /// Removes Items from stack
    /// - Returns: last added item
    mutating func pop() -> T {
        array.removeLast()
    }
    
    /// - Returns: last added item
    func last() -> T? {
        array.last
    }
}



var stack = Stack(array: [1])

stack.push(item: 3)

print("Stack Count: ", stack.count)

print(stack.pop())

print("Stack Count: ", stack.count)

print(stack)

