require_relative 'transaction'

class BankAccount

  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end

  def deposit(amount, transaction=Transaction)
    @balance += amount
    transaction.new(amount, @balance, 'deposit')
  end

  def withdraw(amount, transaction=Transaction)
    raise("You cannot exceed your balance") if amount > @balance
    @balance -= amount
    transaction.new(amount, @balance, 'withdraw')
  end
end
