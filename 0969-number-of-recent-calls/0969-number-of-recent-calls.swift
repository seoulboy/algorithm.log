
class RecentCounter {
    var recentRequests: [Int]

    init() {
        recentRequests = []    
    }
    
    func ping(_ t: Int) -> Int {
        recentRequests.append(t)
        let range = (t-3000..<t+1)
        return recentRequests.reduce(0, { prev, next in
            return prev + (range.contains(next) ? 1 : 0)
        })
    }
}

/**
 * Your RecentCounter object will be instantiated and called as such:
 * let obj = RecentCounter()
 * let ret_1: Int = obj.ping(t)
 */