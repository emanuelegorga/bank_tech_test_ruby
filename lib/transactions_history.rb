class TransactionsHistory
  attr_reader :history

  def initialize(history = [])
    @history = history
  end

  def add(amount, balance, type, transaction=Transaction)
    @history.push(transaction.new(amount, balance, type))
  end
end
