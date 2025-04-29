class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var arr = Array(s)
        var start = 0
        var stringSet = Set<String>()
        var maxCount = 0

        for char in s {
            var letter = String(char)
            while stringSet.contains(letter) {
                stringSet.remove(String(arr[start]))
                start += 1    
            }

            stringSet.insert(letter)
            maxCount = max(maxCount, stringSet.count)
        }

        return maxCount
    }
}