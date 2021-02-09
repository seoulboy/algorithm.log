/*
 platform: Codewars
 link: https://www.codewars.com/kata/56dbe0e313c2f63be4000b25
 */

// solution #1

func horMirror(_ s: String) -> String {
  s.components(separatedBy: "\n").reversed().joined(separator:"\n")
}
func vertMirror(_ s: String) -> String {
  s.components(separatedBy: "\n").map{ String($0.reversed()) }.joined(separator: "\n")
}
// replace the dots with function parameter
func oper(_ fn: (_ s:String) -> String, _ s: String) -> String {
  return fn(s)
}
