require 'bank_account'

RSpec.describe BankAccount do
  subject(:account) { described_class.new(transactionHistory, statement) }
  let(:transactionHistory) { double("TransactionsHistory") }
  let(:statement) { double("Statement") }
  let(:makeDeposit) { account.deposit(20) }
  let(:makeWithdraw) { account.withdraw(15) }

  it 'has a default balance of zero' do
    expect(account.balance).to eq(0)
  end

  describe '#deposit transactions' do
    it 'can deposit money and the balance is updated' do
      allow(transactionHistory).to receive(:add)
      expect{ makeDeposit }.to change { account.balance }.by(20)
    end
  end

  describe '#withdraw transactions' do
    it 'can withdraw money and the balance is updated' do
      allow(transactionHistory).to receive(:add)
      makeDeposit
      expect{ makeWithdraw }.to change { account.balance }.by(-15)
    end

    it 'user withdraw cannot exceed balance' do
      expect { makeWithdraw }.to raise_error('You cannot exceed your balance')
    end
  end

  it 'prints a statement' do
    allow(transactionHistory).to receive(:history)
    allow(statement).to receive(:printStatement).and_return("date  ||  credit  ||  debit  ||  balance\n03/12/2019  ||  30  ||  ||  30\n03/12/2019  ||  ||  10  ||  20\n")
    expect(account.statement).to eq("date  ||  credit  ||  debit  ||  balance\n03/12/2019  ||  30  ||  ||  30\n03/12/2019  ||  ||  10  ||  20\n")
  end

end
