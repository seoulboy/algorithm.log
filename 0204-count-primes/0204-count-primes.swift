class Solution {
    func countPrimes(_ n: Int) -> Int {
        var arr = Array(repeating: true, count: n)
        
        var count = 0
        for i in arr.indices where i >= 2 && arr[i] {
            count += 1
            if i * i < n {
                for j in stride(from: i, to: n, by: i) {
                    arr[j] = false
                }   
            }
        }
        return count
    }
}