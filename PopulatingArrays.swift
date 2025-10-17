import Foundation  // Import Foundation

// Constants
let minNumber = 0      // Minimum random number
let maxNumber = 100    // Maximum random number
let arraySize = 10     // How many numbers in each array
let numArrays = 5      // How many arrays we want to generate

// Function to generate a single array of random numbers
// and print them all on one line
func generateRandomArray() -> [Int] {
    var array = [Int]() // Create an empty array to store numbers
    
    // Loop to fill the array with random numbers
    for i in 0..<arraySize {  // Index goes from 0 to 9
        let randNum = Int.random(in: minNumber...maxNumber) 
        // Generate random number
        array.append(randNum) // Add number to array
    }
    // Build a string of numbers separated by spaces
    var line = ""
    for num in array {
        line += "\(num) " // Add each number to the line
    }
    print(line) // Print all numbers on one line
    return array // Return the completed array
}
// Function to sort an array and print sorted numbers
// with the average at the end
func sortAndAverage(array: [Int]) {
    let sortedArray = array.sorted()  // Sort the array in ascending order
    var total = 0  // Variable to store the sum of numbers
    
    // Build a string for the sorted numbers
    var line = ""
    for num in sortedArray {
        line += "\(num) "  // Add number to the string
        total += num // Add number to total for average
    }

    let average = Double(total) / Double(sortedArray.count)  // Calculate average
    line += String(format: " Average: %.1f", average) // Add average to the line
    print(line)  // Print sorted numbers with average
}

// Main program
print("Random Numbers") // Title for random numbers
var arrays = [[Int]]() // array to store all generated arrays

// Generate multiple arrays of random numbers
for row in 0..<numArrays {  // Loop 10 times
    let randomArray = generateRandomArray()  // Generate one array
    arrays.append(randomArray) // Add array to the  array
}
// Title for sorted arrays
print("\nSorted Arrays with Averages")  
// Loop through each array to sort
for arrayIndex in 0..<arrays.count {
    sortAndAverage(array: arrays[arrayIndex])
}
