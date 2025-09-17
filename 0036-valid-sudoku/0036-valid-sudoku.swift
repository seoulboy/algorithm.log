class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        let len = 9
        var rowsMap = Array(repeating: Set<Character>(), count: len)
        var colsMap = Array(repeating: Set<Character>(), count: len)
        var subBoxMap = Array(repeating: Array(repeating: Set<Character>(), count: len/3), count: len/3)

            
        for row in 0..<9 {
            for col in 0..<9 {
                let item = board[row][col]
                
                if item == "." { continue }
                
                if rowsMap[row].contains(item) { return false } 
                else { rowsMap[row].insert(item) }

                if colsMap[col].contains(item) { return false }
                else { colsMap[col].insert(item) }

                if subBoxMap[row/3][col/3].contains(item) { return false }
                else { subBoxMap[row/3][col/3].insert(item) }
            }
        }
        return true
    }
}

struct SubBox: Hashable {
    let col: Int
    let row: Int
}