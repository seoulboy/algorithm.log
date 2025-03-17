class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var l = 0, r = nums.count-1

        while l <= r {
            let m = (l+r)/2

            if target < nums[m] {
                r = m-1
            } else if target > nums[m] {
                l = m+1
            } else {
                return m
            }
        }

        return l
    }
}