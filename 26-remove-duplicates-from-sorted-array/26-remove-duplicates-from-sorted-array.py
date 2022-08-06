class Solution:
    def removeDuplicates(self, nums: List[int]) -> int:
        dict = {}
        count = 0
        for idx, num in enumerate(nums):
            if dict.get(num) == None:
                dict[num] = 0
                nums[count] = num
                count += 1
            
        return count