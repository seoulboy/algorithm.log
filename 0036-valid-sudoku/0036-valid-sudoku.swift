class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        
        for row in board {
            if isValidSudoku(row) == false {
                print("row is Invalid: \(row)")
                return false
            }
        }
        
        var columns = [[Character]]()
        
        let l = board[0].count
        
        for i in 0..<l {
            var column = [Character]()
            for j in 0..<l {
                column.append(board[j][i])
            }
            columns.append(column)
        }
        
        for column in columns {
            if isValidSudoku(column) == false {
                print("column is invalid: \(column)")
                return false
            }
        }
        
        var subBoxes = [[Character]]()
        for i in 0..<3 {
            for j in 0..<3 {
                let subBox = getSubBox(row: i*3, col: j*3, board: board)
                subBoxes.append(subBox)
            }
        }
        
        for subBox in subBoxes {
            if isValidSudoku(subBox) == false {
                print("subbox is invalid: \(subBox)")
                return false
            }
        }
        
        return true
    }
    
    func isValidSudoku(_ items: [Character]) -> Bool {
        let filtered = items.filter { $0 != "." }
        return Set(filtered).count == filtered.count
    }
    
    func getSubBox(row: Int, col: Int, board: [[Character]]) -> [Character] {
        var subBox = [Character]()
        for i in row..<row+3 {
            for j in col..<col+3 {
                subBox.append(board[i][j])
            }
        }
        return subBox
    }
}