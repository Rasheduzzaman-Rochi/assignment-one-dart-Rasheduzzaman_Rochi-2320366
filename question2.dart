// Question 2: Collections & Control Flow (Difficulty: 2/5) ⭐⭐
/**
 * EXPECTED OUTPUT:
 * Student Scores: {Alice: <random>, Bob: <random>, ...}
 * Highest Score: <Name> with <Score>
 * Lowest Score: <Name> with <Score>
 * Average Score: <Value>
 * Alice: <Score> (Category)
 * ...
 */

import 'dart:math';

void main() {
  // 1. Create a List<String> of student names: ["Alice", "Bob", "Charlie", "Diana", "Eve"]
  // TODO: Create the student names list
  final studentNames = <String>['Alice', 'Bob', 'Charlie', 'Diana', 'Eve'];

  // 2. Create a Map<String, int> to store student scores
  // TODO: Create the scores map
  final studentScores = <String, int>{};

  // 3. Use a for loop to assign random scores (60-100) to each student
  // TODO: Implement the for loop to assign random scores
  final random = Random();
  for (final student in studentNames) {
    studentScores[student] = random.nextInt(41) + 60;
  }

  // 4. Find and display:
  //    - The student with the highest score
  //    - The student with the lowest score
  //    - The average score of all students
  // TODO: Implement the logic to find highest, lowest, and average scores
  var highestStudent = '';
  var highestScore = -1;
  var lowestStudent = '';
  var lowestScore = 101;
  var totalScore = 0;

  studentScores.forEach((name, score) {
    if (score > highestScore) {
      highestScore = score;
      highestStudent = name;
    }
    if (score < lowestScore) {
      lowestScore = score;
      lowestStudent = name;
    }
    totalScore += score;
  });

  final averageScore = totalScore / studentNames.length;

  print('Student Scores: $studentScores');
  print('Highest Score: $highestStudent with $highestScore');
  print('Lowest Score: $lowestStudent with $lowestScore');
  print('Average Score: ${averageScore.toStringAsFixed(1)}');

  // 5. Use a switch statement to categorize students:
  //    - 90-100: "Excellent"
  //    - 80-89: "Good"
  //    - 70-79: "Average"
  //    - Below 70: "Needs Improvement"
  // TODO: Implement the switch statement for each student
  for (final student in studentNames) {
    final score = studentScores[student] ?? 0;
    var category = '';

    // TODO: Add your switch statement here
    switch (score ~/ 10) {
      case 10:
      case 9:
        category = 'Excellent';
        break;
      case 8:
        category = 'Good';
        break;
      case 7:
        category = 'Average';
        break;
      default:
        category = 'Needs Improvement';
    }

    print('$student: $score ($category)');
  }
}
