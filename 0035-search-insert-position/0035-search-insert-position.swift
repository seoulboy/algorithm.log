class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var l = 0, r = nums.count

        while l < r {
            let m = l + (r-l)/2

            if target == nums[m] {
                return m
            } else if target > nums[m] {
                l = m+1
            } else {
                r = m
            }
        }

        return l
    }
}