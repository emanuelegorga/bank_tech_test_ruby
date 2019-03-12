require_relative 'transaction'
require_relative 'transactions_history'

class BankAccount
  attr_reader :balance, :history

  def initialize(transactionsHistory = TransactionsHistory.new, balance = 0)
    @transactionsHistory = transactionsHistory
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
    @transactionsHistory.add(amount, @balance, 'deposit')
  end

  def withdraw(amount)
    raise("You cannot exceed your balance") if amount > @balance
    @balance -= amount
    @transactionsHistory.add(amount, @balance, 'withdraw')
  end
end
