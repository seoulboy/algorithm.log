class Solution:
    def findAndReplacePattern(self, words: List[str], pattern: str) -> List[str]:
        matchingWords = []
        
        for i in range(len(words)):
            dic = {}
            word = words[i]
            
            if len(word) is not len(pattern):
                continue
            
            for j in range(len(pattern)):
                char = word[j]
                patternChar = pattern[j]
                print("char: " + char + " pattern char: " + patternChar)
                
                if patternChar in dic.keys():
                    if dic[patternChar] is not char:
                        break
                else:
                    dic[patternChar] = char
                    
                    if len(dic.values()) is not len(set(dic.values())):
                        break
                    
                    
                if j == len(pattern) - 1:
                    matchingWords.append(words[i])
            
            
        
        return matchingWords