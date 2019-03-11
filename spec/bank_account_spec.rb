require 'bank_account'

RSpec.describe BankAccount do
  subject(:account) { described_class.new }

  it 'has a default balance of zero' do
    expect(account.balance).to eq(0)
  end

end
