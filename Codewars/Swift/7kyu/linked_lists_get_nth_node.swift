/*
 platform: Codewars
 link: https://www.codewars.com/kata/55befc42bfe4d13ab1000007
 */

// solution #1

class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}

enum someError: Error {
  case one
}

func getNth(_ head: Node?, _ index: Int) throws -> Node? {
  guard let currentNode = head, index >= 0 else { throw someError.one }
  return index == 0 ? currentNode : try getNth(currentNode.next, index - 1)
}

// solution #2

class Node: CustomStringConvertible {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
    var description: String {
      guard let next = next else {
        return "\(data)"
      }
      
      return "\(data) -> \(String(describing: next))"
    }
}

enum someError: Error {
  case invalidArgumentExceptionError
}

func getNth(_ head: Node?, _ index: Int) throws -> Node? {
  print(head, index)
  guard index >= 0 else { throw someError.invalidArgumentExceptionError }
  
  var currentNode: Node? = head
  var currentIndex = 0
  
  while currentIndex < index {
    currentNode = currentNode?.next
    currentIndex += 1
  }
  
  guard currentNode != nil else {
    throw someError.invalidArgumentExceptionError
  }
  
  return currentNode
}
