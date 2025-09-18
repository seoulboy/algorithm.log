class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var dic = [Character: Int]()
        
        for c in s {
            dic[c, default: 0] += 1
        }
        
        for (i, c) in s.enumerated() {
            if dic[c] == 1 {
                return i
            }
        }
        
        return -1
    }
}