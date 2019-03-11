require 'bank_account'

RSpec.describe BankAccount do
  subject(:account) { described_class.new }

  it 'has a default balance of zero' do
    expect(account.balance).to eq(0)
  end

  it 'can deposit money and the balance is updated' do
    expect{ account.deposit(50) }.to change { account.balance }.by(50)
  end

  it 'can withdraw money and the balance is updated' do
    account.deposit(20)
    expect{ account.withdraw(20) }.to change { account.balance }.by(-20)
  end

  it 'user withdraw cannot exceed balance' do
    expect {account.withdraw(10) }.to raise_error('You cannot exceed your balance')
  end

end
