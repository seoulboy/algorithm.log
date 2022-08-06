class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        dict = {}
        
        for i, num in enumerate(nums):
            required = target - num
            if dict.get(num) == None:
                dict[required] = i
            else:
                return [i, dict.get(num)]
        
        