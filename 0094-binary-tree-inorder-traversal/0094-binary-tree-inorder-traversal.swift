/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root else { return [] }

        var stack = [TreeNode]()
        var array = [Int]()
        var node: TreeNode? = root
        
        while node != nil || !stack.isEmpty {
            while let n = node {
                stack.append(n)
                node = n.left
            }
            let last = stack.removeLast()
            array.append(last.val)
            node = last.right
        }

        return array
    }
}