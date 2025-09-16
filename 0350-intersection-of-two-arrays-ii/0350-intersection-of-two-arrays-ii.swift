class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var dic = [Int: Int]()
        var result = [Int]()
        for num in nums1 {
            if let value = dic[num] {
                dic[num] = value + 1
            } else {
                dic[num] = 1
            }
        }

        for num in nums2 {
            if let value = dic[num] {
                dic[num] = value - 1
                if value - 1 >= 0 {
                    result.append(num)
                }
            }
        }

        return result
    }
}