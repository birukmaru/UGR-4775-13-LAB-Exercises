fun main() {
    println("Enter a string:")
    val text = readLine() ?: ""
    var minChar = text[0]
    var maxChar = text[0]
    for (char in text) {
     
      minChar = if (char.code < minChar.code) char else minChar
      maxChar = if (char.code > maxChar.code) char else maxChar
    }
    println("Minimum character: $minChar (ASCII value: ${minChar.code})")
    println("Maximum character: $maxChar (ASCII value: ${maxChar.code})")
  }
  