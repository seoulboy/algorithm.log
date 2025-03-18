class Solution {
    func findPeakElement(_ nums: [Int]) -> Int {
        var (left, right) = (0, nums.count-1)

        while left < right {
            let mid = left + (right-left)/2
            (left, right) = nums[mid] < nums[mid+1] ? (mid+1, right) : (left, mid)
        }

        return left
    }
}