
var array = ["a", "b", "c", "d", "e", "f"]


//itarating array
for index in 0..<6 {
    print(index, array[index])
}

print("\n-------------------\n")

//itarating array using size
for index in 0..<array.count {
    print(index, array[index])
}


print("\n-------------------\n")

//reverse itarating array
for index in (0..<array.count).reversed() {
    print(index, array[index])
}

print("\n-------------------\n")

//itarating array
for (index, item) in array.enumerated() {
    print(index, item)
}


print("\n-------------------\n")

//itarating-9 array
for (index, item) in array.enumerated().reversed() {
    print(index, item)
}

print("\n-------------------\n")

//itarating with array using stride
for index in stride(from: 0, through: array.count - 1, by: 1) {
    print(index, array[index])
}


print("\n-------------------\n")

//itarating with array by 2
for index in stride(from: 0, through: array.count - 1, by: 2) {
    print(index, array[index])
}


print("\n-------------------\n")

//reverse itarating with array using stride
for index in stride(from: 0, through: array.count - 1, by: 1).reversed() {
    print(index, array[index])
}
