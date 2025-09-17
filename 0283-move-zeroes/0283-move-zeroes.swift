class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var l = 0
        for r in 0..<nums.count {
            if nums[r] != 0 {
                nums[l] = nums[r]
                l += 1
            }
        }
        
        while l < nums.count {
            nums[l] = 0
            l += 1
        }
    }
}