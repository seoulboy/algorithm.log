class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var (candidate, count) = (0, 0)

        for num in nums {
            if count == 0 {
                candidate = num
                count += 1
            } else {
                count += candidate == num ? 1 : -1
            }
        }

        return candidate
    }
}