class Solution {
func longestNiceSubarray(_ nums: [Int]) -> Int {
    if nums.count == 1 { return 1 }

    var maxCount = 0
    
    for i in 0..<nums.count {
        var acc = nums[i]
        var end = 0
        for j in i+1..<nums.count {
            if acc & nums[j] == 0 {
                acc += nums[j]
                end = j
            } else {
                break
            }
        }
        maxCount = max(maxCount, end-i+1)
    }

    return maxCount
}


    // 1 & 3 -> 01 & 11
    // 3 & 8 -> 0010 & 1010
    // 1 & 8 -> 01 & 1000
}