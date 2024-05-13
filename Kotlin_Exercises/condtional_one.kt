fun main() {
    println("Enter your numeric grade:")
    val grade = readLine()?.toIntOrNull() ?: -1
    if (grade < 0 || grade > 100) {
      println("Invalid grade. Please enter a value between 0 and 100.")
      return
    }
    val letterGrade = when {
      grade in 90..100 -> "A"
      grade in 80..89 -> "B"
      grade in 70..79 -> "C"
      grade in 60..69 -> "D"
      else -> "F"
    }
    println("Your letter grade is: $letterGrade")
  }
  