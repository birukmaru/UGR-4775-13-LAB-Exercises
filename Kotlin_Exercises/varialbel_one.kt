import java.util.Scanner

fun main() {
    val scanner = Scanner(System.`in`)
    print("Enter first number: ")
    val num1 = scanner.nextDouble()
    print("Enter second number: ")
    val num2 = scanner.nextDouble()
    print("Choose operation (+ for addition, - for subtraction, * for multiplication, / for division): ")
    val operation = scanner.next()

    val result = when (operation) {
        "+" -> num1 + num2
        "-" -> num1 - num2
        "*" -> num1 * num2
        "/" -> {
            if (num2 == 0.0) {
                "Error! Division by zero."
            } else {
                num1 / num2
            }
        }
        else -> "Invalid operation!"
    }
    println("Result: $result")
}
