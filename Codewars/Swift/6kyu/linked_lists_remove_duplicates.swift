/*
 platform: Codewars
 link: https://www.codewars.com/kata/55d9f257d60c5fd98d00001b
 */

// solution #1

class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}

func removeDuplicates(head:Node?) -> Node? {
    guard let head = head else { return nil }
    
    var current = head
    
    while let next = current.next {
        let currentValue = current.data
        let nextValue = next.data
        
        if currentValue == nextValue {
            current.next = next.next
            continue
        } else {
            current = next
        }
    }
    
    return head
}

/*
 How I approached this problem:
    머리속으로 로직을 짜다가 펜과 노트를 준비해서 차근히 단계를 따라가다보니 금방 문제를 풀 수 있었다.
 Interesting part:
    6kyu 인데 7kyu 링크드 리스트 문제보다 간단한 느낌이 들었다.
 */

// solution #2

class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}

func removeDuplicates(head:Node?) -> Node? {
  guard var node = head else { return nil }
  while let next = node.next {
    if node.data == next.data {
      node.next = next.next
    } else {
      node = next
    }
  }
  return head
}

/*
 How I approached this problem:
    solution 1과 같은 로직이나 변수 사용을 줄여서 더욱 간결하게 만들었다.
 */

