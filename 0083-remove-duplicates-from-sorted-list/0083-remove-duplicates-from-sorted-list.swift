/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var prev: ListNode?
        var current: ListNode? = head

        while current != nil {
            if prev?.val == current?.val {
                prev?.next = current?.next
            } else {
                prev = current
            }
            current = current?.next
        }

        return head
    }
}