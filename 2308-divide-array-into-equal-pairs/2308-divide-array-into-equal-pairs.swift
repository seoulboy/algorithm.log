class Solution {
    func divideArray(_ nums: [Int]) -> Bool {
        guard nums.count % 2 == 0 else { return false }

        var numDic = [Int: Int]()

        for num in nums {
            numDic[num] = (numDic[num] ?? 0) + 1
        }

        for value in numDic.values where value % 2 != 0 {
            return false
        }

        return true
    }
}