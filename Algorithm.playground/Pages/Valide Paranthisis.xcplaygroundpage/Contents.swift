



struct Solution {
    func validate(string: String) -> Bool {
        var stack:[Character] = []
        
        for (_, item) in string.enumerated() {
            if item == ")" && stack.last == "(" {
                stack.removeLast()
            } else if item == "}" && stack.last == "{" {
                stack.removeLast()
            } else if item == "]" && stack.last == "[" {
                stack.removeLast()
            } else {
                stack.append(item)
            }
        }
        return stack.isEmpty
    }
}


let solution = Solution()
solution.validate(string:"{[{()}{}()(){}()]}")
