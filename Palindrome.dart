// Function to check if a string is a palindrome
bool palindrome(String str) {
  // Convert the input string to lowercase and remove non-alphanumeric characters
  String character = str.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
  
  // Reverse the cleaned string by splitting it into characters, reversing, and then joining
  String characterReversed = character.split('').reversed.join('');
  
  // Print the cleaned original and reversed strings for debugging purposes
  print("Forward: $character = Backward: $characterReversed");
  
  // Return true if the cleaned string is the same as its reversed version, indicating a palindrome
  return character == characterReversed;
}

void main() {
  // Call the palindrome function with a test input and store the result
  bool isPalindrome = palindrome("101");
  
  // Print whether the input string is a palindrome (true or false)
  print("$isPalindrome");
}
