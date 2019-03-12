require 'transactions_history'

RSpec.describe TransactionsHistory do
  subject(:transactionsHistory) { described_class.new(history) }
  let(:history) { [] }
  let(:deposit) { transactionsHistory.add(20, 10, 'deposit') }
  let(:withdraw) { transactionsHistory.add(20, 10, 'withdraw') }

  it 'can store a deposit transaction' do
    expect{ deposit }.to change { history.length }.by(1)
  end

  it 'can store a withdraw transaction' do
    expect{ withdraw }.to change { history.length }.by(1)
  end
end
