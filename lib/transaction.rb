class Transaction
  attr_reader :amount, :balance, :type, :date

  def initialize(amount, balance, type, date=Date.today)
    @amount = amount
    @balance = balance
    @type = type
    @date = date
  end
end
