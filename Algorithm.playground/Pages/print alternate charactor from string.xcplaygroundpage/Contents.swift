// Print alternate charector from string


var greeting = "Hello, playground"

var greatingArray = Array(greeting)

for index in stride(from: 0, to: greeting.count, by: 2){
    print(greatingArray[index])
}

