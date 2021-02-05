/*
 platform: Codewars
 link: https://www.codewars.com/kata/55be95786abade3c71000079
 */

// solution #1

class Node {
    var data: Int
    var next: Node?
    
    init(_ data: Int) {
        self.data = data;
    }
  
    convenience init(_ data: Int, _ next: Node? = nil) {
      self.init(data)
      self.next = next
    }
}

func push(_ head:Node?, _ data:Int) -> Node {
    Node(data, head)
}

func buildOneTwoThree() -> Node {
    push(push(push(nil, 3), 2), 1)
}

// solution #2

class Node {
    var data: Int
    var next: Node?
    
    init(_ data: Int) {
        self.data = data;
    }
}

func push(_ head:Node?, _ data:Int) -> Node {
    let node = Node(data)
    node.next = head
    return node
}

func buildOneTwoThree() -> Node {
    var chained: Node? = nil
    chained = push(chained, 3)
    chained = push(chained, 2)
    chained = push(chained, 1)
    return chained!
}
