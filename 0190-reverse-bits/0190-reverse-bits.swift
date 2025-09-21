class Solution {
    func reverseBits(_ n: Int) -> Int {
        var r = 0

        var n = n
        for _ in 0..<32 {
            r = r << 1
            if n > 0 {
                r += n & 1
            }
            n = n >> 1
        }

        return r
    }
}