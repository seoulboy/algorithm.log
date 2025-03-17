class Solution {
    let map: [Character: Int] = [
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000
    ]
    
    func romanToInt(_ s: String) -> Int {
        var total = 0
        var index = s.index(before: s.endIndex)
        var prev: Character?

        while true {
            var curr = s[index]
            switch (prev, curr) {
                case ("V", "I"): total -= 1
                case ("X", "I"): total -= 1
                case ("L", "X"): total -= 10
                case ("C", "X"): total -= 10
                case ("D", "C"): total -= 100
                case ("M", "C"): total -= 100
                default: total += (map[curr] ?? 0)
            }

            prev = curr

            if index == s.startIndex {
                break
            } else {
                index = s.index(before: index)
            }
        }

        return total
    }
}