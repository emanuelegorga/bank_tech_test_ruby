class Statement

  def printStatement(transactions)
    header = "date  ||  credit  ||  debit  ||  balance\n"
    transactions.each do |transaction|
      if transaction.type == 'deposit'
        header += transaction.date + "  ||  " + transaction.amount.to_s + "  ||  ||  " + transaction.balance.to_s + "\n"
      else
        header += transaction.date + "  ||  ||  " + transaction.amount.to_s + "  ||  " + transaction.balance.to_s + "\n"
      end
    end
    return header
  end

end
