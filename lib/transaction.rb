require 'date'

class Transaction
  attr_reader :amount, :balance, :type, :date

  def initialize(amount, balance, type, date=Time.now.strftime("%m/%d/%Y"))
    @amount = amount
    @balance = balance
    @type = type
    @date = date
  end
end
