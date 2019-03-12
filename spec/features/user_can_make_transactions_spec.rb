require 'bank_account'

RSpec.describe BankAccount do
  subject(:account) { described_class.new }

  it 'can make transactions' do
    account.deposit(50)
    account.withdraw(20)
    expect(account.transactionsHistory.history.length).to eq(2)
  end
end
