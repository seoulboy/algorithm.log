class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        let cols = matrix[0].count, rows = matrix.count

        guard matrix[rows-1][cols-1] >= target else { return false }

        var targetRow = [Int]()

        for row in matrix where target <= row[cols-1] {
                targetRow = row
                break
        }

        var left = 0, right = targetRow.count
        
        while left < right {
            var mid = left + (right-left)/2

            if targetRow[mid] == target {
                return true
            } else if targetRow[mid] < target {
                left = mid + 1
            } else {
                right = mid
            }
        }

        return false
    }
}