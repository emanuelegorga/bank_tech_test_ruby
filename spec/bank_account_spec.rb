require 'bank_account'

RSpec.describe BankAccount do
  subject(:account) { described_class.new(history) }
  let(:history) { [] }
  let(:makeDeposit) { account.deposit(20) }
  let(:makeWithdraw) { account.withdraw(15) }

  it 'has a default balance of zero' do
    expect(account.balance).to eq(0)
  end

  it 'can deposit money and the balance is updated' do
    expect{ account.deposit(50) }.to change { account.balance }.by(50)
  end

  it 'can withdraw money and the balance is updated' do
    makeDeposit
    expect{ account.withdraw(20) }.to change { account.balance }.by(-20)
  end

  it 'user withdraw cannot exceed balance' do
    expect { account.withdraw(10) }.to raise_error('You cannot exceed your balance')
  end

  it 'pushes a deposit transaction into history array' do
    expect { makeDeposit }.to change { history.length }.by(1)
  end

  it 'pushes a deposit transaction into history array' do
    makeDeposit
    expect { makeWithdraw }.to change { history.length }.by(1)
  end

end
