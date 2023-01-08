import UIKit

// MARK: - Higher Order Function - Map, CompactMap and FlatMap

var numbers: [Int] = [1, 2, 3, 4, 5]

var tempArray: [Int] = []

for number in numbers {
    tempArray.append(number * 5)
}
print(tempArray)


let m1 = numbers.map { number in
    return number * 5
}
print("M1", m1)

let m2 = numbers.map({ $0 * 5 })
print("M2", m2)

let m3 = numbers.map{ $0 * 5 }
print("M3", m3)

let c1 = numbers.compactMap{ $0 * 5 }
print("C1", c1)
