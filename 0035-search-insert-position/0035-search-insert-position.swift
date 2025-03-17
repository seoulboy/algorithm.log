class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var left = 0, right = nums.count-1
        var result = -1

        while true {
            guard left <= right else {
                result = left
                break
            }

            let mid = left + (right-left)/2
            
            if nums[mid] == target {
                result = mid
                break
            } else if nums[mid] < target {
                left = mid + 1
            } else if nums[mid] > target {
                right = mid - 1
            }
        }

        return result
    }
}