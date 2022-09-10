class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var max = 0
        var count = 0
        
        for num in nums {
            if num == 1 {
                count += 1
            } else {
                count = 0
            }
            max = count > max ? count : max
        }
        
        return max
    }
}