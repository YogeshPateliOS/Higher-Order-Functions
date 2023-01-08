import UIKit

/// Compact Map - SImilar to Map hai but wo optional and nil value ko remove karta hai

let numbers: [Int?] = [1, nil, 2, 3, nil, 4]

let m1 = numbers.map { number -> Int? in
    if let number {
        return number * 2
    }else {
        return nil
    }
}
print(m1)

let m2 = numbers.map{ $0 == nil ? nil : $0! * 2 }
print("M2", m2)

let c1 = numbers.compactMap{ $0 == nil ? nil : $0! * 2 }
print("C1", c1)

// [1, nil, 2, 3, nil, 4]
let c2 = numbers.compactMap{ $0 }
print("C2", c2) // [Int]

let compactWithMap = numbers.compactMap{$0}.map{$0 * 5}
print(compactWithMap) // [Int]
