class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        var l = 0, r = matrix.count-1
        
        while l < r {
            for i in 0..<(r-l) {
                var t = l, b = r
                
                let topLeft = matrix[t][l+i]
                
                matrix[t][l+i] = matrix[b-i][l]
                
                matrix[b-i][l] = matrix[b][r-i]
                
                matrix[b][r-i] = matrix[t+i][r]
                
                matrix[t+i][r] = topLeft
            }
            
            l += 1
            r -= 1
        }
    }
}