// import 'dart:io'; // Import the 'dart:io' library for input and output operations 

// Function to perform basic arithmetic calculations
double calculate(double num1, double num2, String operator) {
  // Determine which operation to perform based on the operator
  switch (operator) {
    case '+': // Case for addition
      return num1 + num2; // Return the sum of num1 and num2
    case '-': // Case for subtraction
      return num1 - num2; // Return the difference of num1 and num2
    case '*': // Case for multiplication
      return num1 * num2; // Return the product of num1 and num2
    case '/': // Case for division
      if (num2 == 0) { // Check if num2 is zero to prevent division by zero
        throw ArgumentError('Division by zero'); // Throw an error if num2 is zero
      }
      return num1 / num2; // Return the quotient of num1 and num2
    case '%': // Case for modulus
      return num1 % num2; // Return the remainder of num1 divided by num2
    default: // Default case for invalid operators
      throw ArgumentError('Invalid operator'); // Throw an error for invalid operators
  }
}

void main() {
  try { // Start of try block for error handling
    double result = calculate(10, 2, '/'); // Call calculate with sample inputs
    print('Result: $result'); // Print the result of the calculation
  } catch (e) { // Catch any errors that occur in the try block
    print('Error: $e'); // Print the error message
  }
}
