class Solution:
    def findAndReplacePattern(self, words: List[str], pattern: str) -> List[str]:
        matchingWords = []
        
        for i in range(len(words)):
            dic = {}
            
            for j in range(len(pattern)):
                char = words[i][j]
                
                if pattern[j] in dic.keys():
                    if dic[pattern[j]] is not char:
                        break
                else:
                    dic[pattern[j]] = char
                    
                    if len(dic.values()) is not len(set(dic.values())):
                        break
                    
                if j == len(pattern) - 1:
                    matchingWords.append(words[i])
        
        return matchingWords