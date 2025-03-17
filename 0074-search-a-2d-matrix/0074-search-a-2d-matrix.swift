class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        let colCount = matrix[0].count
        let rowCount = matrix.count

        guard matrix[rowCount-1][colCount-1] >= target else { return false }

        var left = 0, right = colCount * rowCount
        
        while left < right {
            let mid = left + (right-left)/2
            let row = mid / colCount 
            let col = mid % colCount

            if matrix[row][col] == target {
                return true
            } else if matrix[row][col] < target {
                left = mid+1
            } else {
                right = mid
            }
        }

        return false

        // var targetRow = [Int]()

        // for row in matrix where target <= row[cols-1] {
        //         targetRow = row
        //         break
        // }

        // var left = 0, right = targetRow.count
        
        // while left < right {
        //     var mid = left + (right-left)/2

        //     if targetRow[mid] == target {
        //         return true
        //     } else if targetRow[mid] < target {
        //         left = mid + 1
        //     } else {
        //         right = mid
        //     }
        // }

        // return false
    }
}