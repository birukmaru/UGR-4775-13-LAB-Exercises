fun analyzeString(text: String): Triple<Int, Int, Int> {
    var wordCount = 0
    var upperCaseCount = 0
    var vowelCount = 0
  
    val words = text.split("\\s+")  
  
    for (char in text) {
      if (char.isLetter()) {
        upperCaseCount += if (char.isUpperCase()) 1 else 0
        vowelCount += if (char.toLowerCase() in "aeiou") 1 else 0
      } else if (char.isWhitespace()) {
        wordCount++
      }
    }
    wordCount += if (text.isNotEmpty() && !text.endsWith(" ")) 1 else 0
    return Triple(wordCount, upperCaseCount, vowelCount)
  }
  