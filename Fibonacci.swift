func fibonacciNumbersUpTo(limit: Int) -> [Int] {
    var fibonacciNumbers: [Int] = [0, 1]
    var nextFibonacci = 1
    
    while nextFibonacci <= limit {
        nextFibonacci = fibonacciNumbers[fibonacciNumbers.count - 1] + fibonacciNumbers[fibonacciNumbers.count - 2]
        if nextFibonacci <= limit {
            fibonacciNumbers.append(nextFibonacci)
        }
    }
    
    return fibonacciNumbers
}

let limit = 1000
let result = fibonacciNumbersUpTo(limit: limit)
print(result)
