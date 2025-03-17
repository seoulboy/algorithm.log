class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var count = 0
        for c in s.reversed() {
            if c != " " {
                count += 1
            } else if count > 0 {
                return count
            }
        }
        return count 
    }
}