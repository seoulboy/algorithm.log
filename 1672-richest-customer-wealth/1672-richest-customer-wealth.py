class Solution:
    def maximumWealth(self, accounts: List[List[int]]) -> int:
        maximum = 0
        for account in accounts:
            maximum = max(sum(account), maximum)
        return maximum