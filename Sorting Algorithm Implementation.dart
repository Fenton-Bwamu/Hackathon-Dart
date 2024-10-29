import 'dart:math'; // Importing 'dart:math' library to generate random numbers

// Quick Sort Algorithm
List<int> quickSort(List<int> list) {
  if (list.length <= 1) return list; // Base case: if list has 1 or fewer elements, it's already sorted

  int pivot = list[list.length ~/ 2]; // Selecting the middle element as the pivot
  List<int> less = []; // List to hold elements less than pivot
  List<int> equal = []; // List to hold elements equal to pivot
  List<int> greater = []; // List to hold elements greater than pivot

  for (int num in list) { // Loop through each element in the list
    if (num < pivot) { // If element is less than pivot
      less.add(num); // Add to 'less' list
    } else if (num > pivot) { // If element is greater than pivot
      greater.add(num); // Add to 'greater' list
    } else { // If element is equal to pivot
      equal.add(num); // Add to 'equal' list
    }
  }

  return quickSort(less) + equal + quickSort(greater); // Recursively sort 'less' and 'greater', then concatenate all lists
}

// Bubble Sort Algorithm
List<int> bubbleSort(List<int> list) {
  for (int i = 0; i < list.length - 1; i++) { // Outer loop to control the number of passes
    for (int j = 0; j < list.length - i - 1; j++) { // Inner loop to compare adjacent elements
      if (list[j] > list[j + 1]) { // If current element is greater than the next element
        int temp = list[j]; // Temporarily store current element
        list[j] = list[j + 1]; // Swap current element with the next element
        list[j + 1] = temp; // Place stored element in next position
      }
    }
  }
  return list; // Return the sorted list
}

// Function to measure execution time of sorting algorithms
void measureExecutionTime(List<int> list, List<int> Function(List<int>) sortFunction, String algorithmName) {
  List<int> listCopy = List.from(list); // Create a copy of the list to avoid modifying the original list
  final stopwatch = Stopwatch()..start(); // Initialize stopwatch and start timing
  sortFunction(listCopy); // Call the sorting function on the copied list
  stopwatch.stop(); // Stop timing after sorting is complete
  print('$algorithmName took: ${stopwatch.elapsedMicroseconds} µs'); // Print the elapsed time in microseconds
}

void main() {
  List<int> list = List.generate(1000, (_) => Random().nextInt(1000)); // Generate a random list of integers

  measureExecutionTime(list, quickSort, "Quick Sort"); // Measure and display Quick Sort performance
  measureExecutionTime(list, bubbleSort, "Bubble Sort"); // Measure and display Bubble Sort performance
}
