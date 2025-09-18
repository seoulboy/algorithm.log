class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var s = Array(s.unicodeScalars)
        var t = Array(t.unicodeScalars)
        
        var a = Array(repeating: 0, count: 26)
        
        for char in s {
            let index = Int(char.value) - 97
            a[index] += 1 
        }
        
        for char in t {
            let index = Int(char.value) - 97
            a[index] -= 1 
        }
        
        for num in a {
            if num != 0 {
                return false
            }
        }
        
        return true
    }
}