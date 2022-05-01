# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def leafSimilar(self, root1: Optional[TreeNode], root2: Optional[TreeNode]) -> bool:
        return self.getLeafValueSequenceOf(root1) == self.getLeafValueSequenceOf(root2)
        
    def getLeafValueSequenceOf(self, root: Optional[TreeNode]) -> [int]:
        discovered = []
        stack = [root]
        while stack:
            popped = stack.pop()
            if popped not in discovered:
                if popped.left is not None:
                    stack.append(popped.left)
                if popped.right is not None:
                    stack.append(popped.right)
                if popped.right is None and popped.left is None:
                    discovered.append(popped.val)
        return discovered
        