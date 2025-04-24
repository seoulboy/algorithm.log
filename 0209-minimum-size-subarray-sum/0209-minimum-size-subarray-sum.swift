class Solution {
    func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
        var start = 0
        var currentSum = 0
        var length = 0

        for end in (0..<nums.count) {
            currentSum += nums[end]

            while currentSum >= target {
                length = min(end-start+1, length != 0 ? length : nums.count)
                currentSum -= nums[start]
                start += 1
            }
        }
        
        return length
    }
}