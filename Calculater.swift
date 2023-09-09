import Foundation

// Top Section: Define Input Variables
var firstNumber: Double = 0.0
var secondNumber: Double = 0.0
var operation: String = ""
var result: Double = 0.0

// Input for the first number
print("Simple Calculator in Swift")
print("Enter the first number:")
if let input = readLine(), let number = Double(input) {
    firstNumber = number
} else {
    print("Invalid input. Please enter a valid number.")
    exit(1)
}

// Input for the operation
print("Enter an operation (+, -, *, /, %):")
if let input = readLine() {
    if ["+", "-", "*", "/", "%"].contains(input) {
        operation = input
    } else {
        print("Invalid operation. Please enter a valid operation.")
        exit(1)
    }
} else {
    print("Invalid input. Please enter a valid operation.")
    exit(1)
}

// Input for the second number
print("Enter the second number:")
if let input = readLine(), let number = Double(input) {
    secondNumber = number
} else {
    print("Invalid input. Please enter a valid number.")
    exit(1)
}

// Perform the operation
switch operation {
case "+":
    result = firstNumber + secondNumber
case "-":
    result = firstNumber - secondNumber
case "*":
    result = firstNumber * secondNumber
case "/":
    if secondNumber != 0 {
        result = firstNumber / secondNumber
    } else {
        print("Error: Division by zero")
        exit(1)
    }
case "%":
    result = (firstNumber / 100) * secondNumber
default:
    print("Invalid operation")
    exit(1)
}

// Print the result
print("Result: \(firstNumber) \(operation) \(secondNumber) = \(result)")
print("Calculator is quitting. Goodbye!")
