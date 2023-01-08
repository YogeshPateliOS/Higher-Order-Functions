import UIKit

/// FlatMap - collection inside collection - merge karke single collection mai dega

var numbers: [[Int]] = [
    [1,2,3],
    [4,5,6],
    [7,8,9]
]

var tempArray: [Int] = []

for number in numbers {
    tempArray += number // [1,2,3]
}
print(tempArray)

let f1 = numbers.flatMap{$0}
print(f1)

let m1 = numbers.flatMap{$0}.map{$0 * 5}
print(m1)
