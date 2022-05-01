# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def leafSimilar(self, root1: Optional[TreeNode], root2: Optional[TreeNode]) -> bool:
        return self.stackSearch(root1) == self.stackSearch(root2)
        
    
    def stackSearch(self, node: Optional[TreeNode]) -> [int]:
        discovered = []
        stack = [node]
        while stack:
            v = stack.pop()
            if v not in discovered:
                if v.left is not None:
                    stack.append(v.left)
                if v.right is not None:
                    stack.append(v.right)
                if v.right is None and v.left is None:
                    discovered.append(v.val)
        return discovered
        