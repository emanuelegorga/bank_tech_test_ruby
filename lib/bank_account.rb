require_relative 'transaction'
require_relative 'transactions_history'
require_relative 'statement'

class BankAccount
  attr_reader :balance, :transactionsHistory

  def initialize(transactionsHistory = TransactionsHistory.new, statement=Statement.new, balance = 0)
    @transactionsHistory = transactionsHistory
    @statement = statement
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

  def statement
    @statement.printStatement(@transactionsHistory.history)
  end
end
