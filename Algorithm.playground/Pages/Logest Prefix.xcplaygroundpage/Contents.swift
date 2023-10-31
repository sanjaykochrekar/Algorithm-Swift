

extension Array where  Iterator.Element == String {
    
    func findPrefix() -> Int {
        for (i, ch) in self[0].enumerated() {
            
            for (_, item) in self.enumerated() {
                
                if item.count - 1 < i {
                    return i - 1
                }
//                print(item.index(after: "a"))
                //                if ch != Array(item)[i] {
                //                    return i - 1
                //                }
            }
        }
        return -1
    }
    
}


print(["flower","flow","flight"].findPrefix())



//func findPrefix(_ strs: [String]) -> Int {
//
//
//    for (i, ch) in strs[0].enumerated() {
//        for (_, item) in strs.enumerated() {
//            if item.count - 1 < i {
//                return i - 1
//            }
//            if ch != Array(item)[i] {
//                return i - 1
//            }
//        }
//    }
//    return -1
//}
//
//
//print(findPrefix(["flower","flow","flight"]))
