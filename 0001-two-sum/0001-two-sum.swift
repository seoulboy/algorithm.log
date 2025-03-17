class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dic = [Int: Int]()

        var result = [-1, -1]
        for (i, v) in nums.enumerated() {
            if let targetIndex = dic[target-v] {
                result = [i, targetIndex]
                break
            } else {
                dic[v] = i
            }
        }

        return result
    }
}