class Solution:
    def runningSum(self, nums: List[int]) -> List[int]:
        sum = 0
        newList = []
        for i, num in enumerate(nums):
            sum += num 
            newList.append(sum)
            
        return newList
            