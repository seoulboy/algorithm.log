class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let filtered = s.lowercased().filter { $0.isNumber || $0.isLetter }
        return filtered == String(filtered.reversed())
    }
}