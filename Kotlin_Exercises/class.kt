class BankAccount(val accountNumber: String, var balance: Double) {

    fun deposit(amount: Double) {
      balance += amount
      println("Deposit of $$amount successful. New balance: $$balance")
    }
  
    fun withdraw(amount: Double) {
      if (balance >= amount) {
        balance -= amount
        println("Withdrawal of $$amount successful. New balance: $$balance")
      } else {
        println("Insufficient Amount")
      }
    }
  
    fun printBalance() {
      println("Account Number: $accountNumber")
      println("Balance: $$balance")
    }
  }
  