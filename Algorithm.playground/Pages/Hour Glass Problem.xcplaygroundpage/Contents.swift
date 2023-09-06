//    1 1 1 0 0 0
//    0 1 0 0 0 0
//    1 1 1 0 0 0
//    0 0 0 0 0 0
//    0 0 0 0 0 0
//    0 0 0 0 0 0

//    An hourglass in is a subset of values with indices falling in arr this pattern in 's graphical representation:


//    a b c
//      d
//    e f g


//    There are 16 hourglasses in arr. An hourglass sum is the sum of an hourglass' values. Calculate the hourglass sum for every hourglass in arr, then print the maximum hourglass sum. The array will always be 6X6.

//    Example
//    arr =
//    -9 -9 -9  1 1 1
//     0 -9  0  4 3 2
//    -9 -9 -9  1 2 3
//     0  0  8  6 6 0
//     0  0  0 -2 0 0
//     0  0  1  2 4 0

//    Solution
//    -63, -34, -9, 12,
//    -10,   0, 28, 23,
//    -27, -11, -2, 10,
//      9,  17, 25, 18



struct Solution {
    
    func hourglassSum <T: AdditiveArithmetic> (arr: [[T]]) -> [[T]] {
        var hourglass = [[T]]()
        for i in 0...3 {
            var lineArr:[T] = []
            for j in 0...3 {
                let firstLine = arr[i][j] + arr[i][j + 1] + arr[i][j + 2]
                let centerLine = arr[i + 1][j + 1]
                let lastLine = arr[i + 2][j] + arr[i + 2][j + 1] + arr[i + 2][j + 2]
                lineArr.append(firstLine + centerLine + lastLine)
            }
            hourglass.append(lineArr)
        }
        return hourglass
    }
    
}

var arr = [
    [-9, -9, -9, 1, 1, 1],
    [0, -9, 0, 4, 3, 2],
    [-9, -9, -9, 1, 2, 3],
    [0, 0, 8, 6, 6, 0],
    [0, 0, 0, -2, 0, 0],
    [0, 0, 1, 2, 4, 0]
]

let soloution = Solution()
print(soloution.hourglassSum(arr:arr))
