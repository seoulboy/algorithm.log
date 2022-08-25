class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var dict: [Character: Int] = [:]
        
        for letter in magazine {
            let num = dict[letter, default: 0]
            dict.updateValue(num + 1, forKey: letter)
        }
        
        var bool: Bool = true
        for letter in ransomNote {
            let num = dict[letter, default: 0]
            
            if num > 0 {
                dict.updateValue(num - 1, forKey: letter)
            } else {
                bool = false
            }
        }
        
        return bool
    }
}