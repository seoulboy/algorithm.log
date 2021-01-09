/*
 platform: CodeWars
 link: https://www.codewars.com/kata/595877be60d17855980013d3/train/swift
 */

// solution #1

func euclideanDistanceBetween(_ point1: [Double], and point2: [Double]) -> Double {
  round(sqrt(zip(point1, point2).map(-).map{ pow($0, 2) }.reduce(0.0, +)) * 100) / 100
}

/*
 How I approached this problem:
    zip 을 사용하여 두가지 컬렉션을 동시에 iterate할 수 있도록 함
 Interesting part:
    zip, map(-), round( ... * 100) / 100
 */

// solution #2

func euclideanDistanceBetween(_ point1: [Double], and point2: [Double]) -> Double {
  var sum: Double = 0
  for (index, point1Coord) in point1.enumerated() {
    let point2Coord = point2[index]
    sum += pow(point1Coord - point2Coord, 2)
  }
  
  return (sum.squareRoot() * 100).rounded() / 100
}


