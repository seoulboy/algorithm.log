class Solution {
    func climbStairs(_ n: Int) -> Int {
        var a = Array(repeating: 0, count: n+1)
        return climb(n, &a)
    }

    func climb(_ n: Int, _ a: inout [Int]) -> Int {
        if n == 1 {
            return 1
        }

        if n == 2 {
            return 2
        }

        if a[n] == 0 {
            a[n] = climb(n-1, &a) + climb(n-2, &a)
        }

        return a[n]
    }
}