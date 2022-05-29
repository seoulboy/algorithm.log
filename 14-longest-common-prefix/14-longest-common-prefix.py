class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        if len(strs) == 1:
            return strs[0]
        
        commonPrefixCount = 0
        hasCommonPrefix = True
        
        while hasCommonPrefix:
            commonPrefix = strs[0][:commonPrefixCount + 1]
            
            for string in strs:
                if commonPrefixCount >= len(string):
                    hasCommonPrefix = False
                    break
                    
                hasCommonPrefix = commonPrefix == string[:commonPrefixCount + 1] and hasCommonPrefix
                
            if hasCommonPrefix:
                commonPrefixCount += 1
        
        return strs[0][:commonPrefixCount]