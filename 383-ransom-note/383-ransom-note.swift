class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var dict: [Character: Int] = [:]
        
        for letter in magazine {
            if let num = dict[letter], num > 0 {
                dict.updateValue(num + 1, forKey: letter)
            } else {
                dict.updateValue(1, forKey: letter)
            }
        }
        
        var bool: Bool = true
        for letter in ransomNote {
            if let num = dict[letter], num > 0 {
                dict.updateValue(num - 1, forKey: letter)
            } else {
                bool = false
            }
        }
        
        return bool
    }
}