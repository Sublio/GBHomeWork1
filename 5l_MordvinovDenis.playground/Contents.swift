import Foundation

struct Queue<Q>{
    var currentQueue: [Q] = []
    
    init(initQueue:[Q]) {
        self.currentQueue = initQueue
    }
    
    
    mutating func pushOnCurrentQueue(_ elememt: Q) {
        currentQueue.append(elememt)
    }
    
    mutating func removeFromQueue(_ element: Q) {
        print(element.self)
    }
}

let queue = Queue(initQueue: [1,2,3,4,5,6,7,8,9,0])
print(queue.currentQueue)
