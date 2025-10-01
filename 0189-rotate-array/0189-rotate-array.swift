class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let k = k % nums.count
        let n = nums.count
        reverse(&nums, l: 0, r: n-1)
        reverse(&nums, l: 0, r: k-1)
        reverse(&nums, l: k, r: n-1) 
    }
    
    func reverse(_ arr: inout [Int], l: Int, r: Int) {
        var l = l, r = r
        while l < r {
            arr.swapAt(l,r)
            l += 1
            r -= 1
        }
    }
}