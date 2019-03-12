require 'bank_account'

RSpec.describe BankAccount do
  subject(:account) { described_class.new }

  it 'can print a statement' do
    account.deposit(50, "03/12/2019")
    account.withdraw(20, "03/12/2019")
    expect(account.statement).to eq("date  ||  credit  ||  debit  ||  balance\n03/12/2019  ||  50  ||  ||  50\n03/12/2019  ||  ||  20  ||  30\n")
  end
end
