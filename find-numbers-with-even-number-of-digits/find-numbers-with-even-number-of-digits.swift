class Solution {
    func findNumbers(_ nums: [Int]) -> Int {
        var count = 0
        
        for var num in nums {
            var digits = 0
            while num > 0 {
                num /= 10
                digits += 1
            }
            
            if digits.isMultiple(of: 2) {
                count += 1
            }
        }
        
        return count
    }
}