import Foundation
import UIKit

struct Element: Equatable {
    
//    static func ==(first: Element, second: Element) -> Bool {
//        return first == second
//    }
}


struct Queue<Element>{
    var currentQueueOfElements: [Element] = []
    
    init(initWithElements:[Element]) {
        self.currentQueueOfElements = initWithElements
    }
    
    
    mutating func pushOnCurrentQueue(_ elememt: Element) {
        currentQueueOfElements.append(elememt)
    }
    
    // This may be optional as currentQueue might be empty
    mutating func removeLastFromQueue() -> Element?  {
        return currentQueueOfElements.removeLast()
    }
    
    subscript (index: Int) -> Bool? {
        if currentQueueOfElements.indices.contains(index){
          print("Found an element in array")
          return true
        }else {
            print("There is no element in array")
            return nil
        }
    }
}

 func filterQueue(queue:[Int], predicate: (Int) -> Bool) -> [Int] {
    var tmpArray = [Int]()
    
    for element in queue {
        if predicate(element){
            tmpArray.append(element)
        }
    }
    
    return tmpArray
    
}

var queue = Queue(initWithElements: [1,2,3,4,6])

let divideByThree: (Int) -> Bool = { (element: Int) -> Bool in
    return element % 3 == 0
}

print(queue.currentQueueOfElements)

filterQueue(queue: queue.currentQueueOfElements, predicate: divideByThree )

let result = queue[5]

