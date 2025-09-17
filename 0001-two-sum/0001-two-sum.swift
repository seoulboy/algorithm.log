class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dic = [Int: Int]()
        
        for (i, num) in nums.enumerated() {
            let v = target - num
            if let j = dic[v] {
                return [i, j]
            } else {
                dic[num] = i   
            }
        }
        return []
    }
}