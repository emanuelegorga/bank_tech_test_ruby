class BankAccount

  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    raise("You cannot exceed your balance") if amount > @balance
    @balance -= amount
  end
end
