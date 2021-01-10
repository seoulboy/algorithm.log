/*
 platform: CodeWars
 link: https://www.codewars.com/kata/55da347204760ba494000038
 */

// solution #1

class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}

struct Context {
    var source:Node?
    var dest:Node?
}

enum NodesError: Error {
  case emptyListError
}

func moveNode(source:Node?, dest:Node?) throws -> Context? {
    guard let source = source else { throw NodesError.emptyListError }
    let _source = source.next
    source.next = dest
    let _dest = source
    return Context(source: _source, dest: _dest)
}

