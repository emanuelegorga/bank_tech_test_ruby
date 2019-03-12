class TransactionsHistory
  attr_reader :history

  def initialize(history = [])
    @history = history
  end

  def add(amount, balance, type, date=Time.now.strftime("%m/%d/%Y"), transaction=Transaction)
    @history.push(transaction.new(amount, balance, type, date))
  end
end
