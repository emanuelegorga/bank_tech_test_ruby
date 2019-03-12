require_relative 'transaction'
require_relative 'transactions_history'
require_relative 'statement'
require 'date'

class BankAccount
  attr_reader :balance, :transactionsHistory

  def initialize(transactionsHistory = TransactionsHistory.new, statement=Statement.new)
    @transactionsHistory = transactionsHistory
    @statement = statement
    @balance = 0
  end

  def deposit(amount, date=Time.now.strftime("%m/%d/%Y"))
    @balance += amount
    @transactionsHistory.add(amount, @balance, 'deposit', date)
  end

  def withdraw(amount, date=Time.now.strftime("%m/%d/%Y"))
    isValid?(amount)
    @balance -= amount
    @transactionsHistory.add(amount, @balance, 'withdraw', date)
  end

  def statement
    @statement.printStatement(@transactionsHistory.history)
  end

  private

  def isValid?(amount)
    raise("You cannot exceed your balance") if amount > @balance
  end
end
