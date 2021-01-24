/*
 platform: Codewars
 link: https://www.codewars.com/kata/55e72695870aae78c4000026/train/swift
 */

// solution #1

class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}

extension Node: CustomStringConvertible {
  var description: String {
    guard let next = self.next else {
      return "\(self.data)"
    }
    
    return "\(self.data) -> \(next)"
  }
}

func reverse(list:inout Node?) {
  guard var nextNode = list?.next else {
    return
  }
  var currentNode: Node? = list
  var prevNode: Node? = nil
  var newNode: Node? = nil
  while let node = currentNode {
    newNode = Node(node.data)
    if let prevNode = prevNode {
      newNode?.next = prevNode
    } else {
      newNode?.next = nil
    }
    prevNode = newNode
    currentNode = node.next
  }
  list = newNode
}

/*
 How I approached this problem:
    노트에 적어가면서 알고리즘의 수정을 반복했다. Node 클래스의 CustomStringConvertible extension 을 추가하여 콘솔에 출력하면서 디버깅을 해보기도 했다.
 Interesting part:
    새로운 node를 반환하도록 하는 기존의 linked list 알고리즘과는 다르게 기존 리스트의 참조값을 바꿔주는 형태였다.
 */

// solution #2

class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}

func reverse(list:inout Node?) {
  var current: Node? = list
  var prev: Node? = nil
  var reversed: Node? = nil
  
  while let node = current {
    reversed = Node(node.data)
    reversed?.next = prev
    prev = reversed
    current = node.next
  }
  
  list = reversed
}

/*
 How I approached this problem:
    위와 같은 로직이지만 불필요한 체크사항들을 정리하고 간결하게 정리했다.
 */
