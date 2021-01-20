/*
 platform: Codewars
 link: https://www.codewars.com/kata/55cacc3039607536c6000081/train/swift
 */

// solution #1

extension Node: CustomStringConvertible {
  var description: String {
    if let next = next {
      return "\(data) -> \(next)"
    } else {
      return "\(data)"
    }
  }
}

enum someError: Error {
  case argumentOutOfRangeException
}

func insertNth(_ head: Node?, _ index: Int, _ data: Int) throws -> Node? {
  guard index >= 0 else { return nil }
  
  guard var node = head, index != 0 else { return push(head, data) }
  var count = 0
  while let next = node.next, count < index - 1 {
    node = next
    count += 1
  }
  
  if node.next == nil && count < index - 1 { throw someError.argumentOutOfRangeException }

  let newNode = Node(data)
  newNode.next = node.next
  node.next = newNode
  
  return head
}

/*
 How I approached this problem:
    step by step, with lots of trial and errors
 */
