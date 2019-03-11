require_relative 'transaction'

class BankAccount
  attr_reader :balance, :history

  def initialize(history = [], balance = 0)
    @balance = balance
    @history = history
  end

  def deposit(amount, transaction=Transaction)
    @balance += amount
    @history.push(transaction.new(amount, @balance, 'deposit'))
  end

  def withdraw(amount, transaction=Transaction)
    raise("You cannot exceed your balance") if amount > @balance
    @balance -= amount
    @history.push(transaction.new(amount, @balance, 'withdraw'))
  end
end
