"""
# Definition for a Node.
class Node:
    def __init__(self, val=None, children=None):
        self.val = val
        self.children = children
"""

class Solution:
    def maxDepth(self, root: 'Node') -> int:
        self.max_depth = 0

        self.traverse(root, self.max_depth)

        return self.max_depth

    def traverse(self, node, depth):
        if not node:
            return

        self.max_depth = max(self.max_depth, depth + 1)

        for child in node.children:
            self.traverse(child, depth + 1)
        
