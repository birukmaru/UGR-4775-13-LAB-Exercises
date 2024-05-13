import kotlin.random.Random

fun main() {
 
  val passwordLength = 8


  val lowercaseLetters = ('a'..'z').toList()
  val uppercaseLetters = ('A'..'Z').toList()
  val digits = ('0'..'9').toList()
  val specialSymbols = listOf('!', '@', '#', '$', '%', '&', '*', '(', ')', '-', '_', '=', '+', '{', '}', '[', ']', '|', '\\', ':', ';', ' ', '<', '>', '.', ',', '?')

  
  val charPool = lowercaseLetters + uppercaseLetters + digits + specialSymbols


  val passwordBuilder = StringBuilder()
  val random = Random
  for (i in 0 until passwordLength) {
    val randomChar = charPool.random(random)  
    passwordBuilder.append(randomChar)
  }

  println("Generated password: ${passwordBuilder.toString()}")
}
