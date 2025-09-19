class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var a: [[Int]] = []
        
        for i in 0..<numRows {
            var c = Array(repeating: 0, count: i+1)
            
            for j in c.indices {
                if j == 0 || j == c.count-1 {
                    c[j] = 1
                } else {
                    c[j] = a[i-1][j-1] + a[i-1][j]
                }
            }
            a.append(c)
        }
        return a
    }
}