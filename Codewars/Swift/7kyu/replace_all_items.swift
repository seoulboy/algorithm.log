/*
 platform: Codewars
 link: https://www.codewars.com/kata/57ae18c6e298a7a6d5000c7a/train/swift
 */

// solution #1

func replaceAll<T: Equatable>(array: [T], old: T, new: T) -> [T] {
   array.map { $0 == old ? new : $0 }
}

/*
 Interesting part:
    string 에는 있는 replaceAllOccurences(of:with:)가 array 타입에는 없다는 사실을 깨달았다.
 */

