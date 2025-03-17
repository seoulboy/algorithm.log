class Solution {
    func countConsistentStrings(_ allowed: String, _ words: [String]) -> Int {
        let allowed = Set(allowed)
        var count = 0
        for word in words {
            count += Set(word).isSubset(of: allowed) ? 1 : 0
        }
        return count
    }
}