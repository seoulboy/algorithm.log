class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        let h = Array(haystack)
        let n = Array(needle)
        
        var start = 0
        var end = start + needle.count
        
        while end <= h.count {
            if h[start] != n[0] {
                start += 1
                end += 1
                continue
            }

            if String(h[start..<end]) == needle {
                return start
            } else {
                start += 1
                end += 1
            }
        }
        
        return -1
    }
}