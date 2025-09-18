class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var a = Array(repeating: 0, count: 26)
        
        for char in Array(s.unicodeScalars) {
            let index = Int(char.value) - 97
            a[index] += 1 
        }
        
        for char in Array(t.unicodeScalars) {
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