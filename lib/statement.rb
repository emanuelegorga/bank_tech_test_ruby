class Statement

  def printStatement(transactions)
    @header = "date  ||  credit  ||  debit  ||  balance\n"
    transactions.each do |transaction|
      transaction.type == 'deposit' ? deposit(transaction) : withdrawal(transaction)
    end
    return @header
  end

  private

  def deposit(transaction)
    date(transaction)
    amount(transaction)
    @header += "||  "
    balance(transaction)
  end

  def withdrawal(transaction)
    date(transaction)
    @header += "||  "
    amount(transaction)
    balance(transaction)
  end

  def date(transaction)
    @header += transaction.date + "  ||  "
  end

  def amount(transaction)
    @header += transaction.amount.to_s + "  ||  "
  end

  def balance(transaction)
    @header += transaction.balance.to_s + "\n"
  end

end
