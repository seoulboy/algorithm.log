class Solution:
    def findAndReplacePattern(self, words: List[str], pattern: str) -> List[str]:
        matchingWords = []
        
        for i in range(len(words)):
            dic = {}
            word = words[i]
            
            if len(word) != len(pattern):
                continue
            
            for j in range(len(pattern)):
                char = word[j]
                patternChar = pattern[j]
                
                if patternChar in dic.keys():
                    if dic[patternChar] != char:
                        break
                else:
                    dic[patternChar] = char
                    
                    if len(dic.values()) != len(set(dic.values())):
                        break
                    
                if j == len(pattern) - 1:
                    matchingWords.append(words[i])
        
        return matchingWords