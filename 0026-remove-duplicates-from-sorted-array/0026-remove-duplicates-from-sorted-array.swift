class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var i = 1
        
        for j in nums.indices {
            if nums[i-1] != nums[j]  {
                nums[i] = nums[j]
                i += 1
            }
        }
        
        return i
    }
}