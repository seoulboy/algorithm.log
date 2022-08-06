class Solution:
    def removeDuplicates(self, nums: List[int]) -> int:
        if len(nums) == 0:
            return 0
        
        previous = nums[0]
        
        index = 1
        length = 1
        for i in range(1, len(nums)):
            if previous != nums[i]:
                nums[index] = nums[i]
                index += 1
                length += 1
            previous = nums[i]
        return length