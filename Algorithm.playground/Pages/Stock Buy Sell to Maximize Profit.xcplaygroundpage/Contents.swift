//The cost of a stock on each day is given in an array. Find the maximum profit that you can make by buying and selling on those days. If the given array of prices is sorted in decreasing order, then profit cannot be earned at all.
//
//
//Input: arr[] = {100, 180, 260, 310, 40, 535, 695}
//Output: 865
//Explanation: Buy the stock on day 0 and sell it on day 3 => 310 – 100 = 210
//Buy the stock on day 4 and sell it on day 6 => 695 – 40 = 655
//Maximum Profit  = 210 + 655 = 865


import Foundation



func findMaximum<T: AdditiveArithmetic & Comparable>(arr: [T]) -> T {
    guard var firstSmallItem: T = arr.first else { return T.zero }
    var profit: T = T.zero
    
    for index in stride(from: 1, through: arr.count - 1, by: 1) {
        if arr[index] > arr[index - 1] {
            profit = profit + arr[index] - arr[index - 1]
        }
        
//        if firstSmallItem > arr[index] {
//            firstSmallItem = arr[index]
//        } else if index == arr.count - 2 {
//            var lastGreatest = arr[index] > arr[index + 1] ? arr[index] : arr[index + 1]
//            profit = profit + (lastGreatest - firstSmallItem)
//            firstSmallItem = arr[index + 1]
//        } else if arr[index] > arr[index + 1] {
//            profit = profit + (arr[index] - firstSmallItem)
//            firstSmallItem = arr[index + 1]
//        }
    }
    return profit
}


print(findMaximum(arr: [100, 180, 260, 310, 40, 535, 695, 1.0, 2]))

print(findMaximum(arr: [1, 3, 4, 2, 2, 2, 4,2, 3, 1, 90]))

print(findMaximum(arr: [5.0]))

print(findMaximum(arr: [5,4,3,2,1,0]))
