require 'statement'

RSpec.describe Statement do
  subject(:statement) { described_class.new }
  let(:transactions) { [double('Transaction', amount: 30, balance: 30, type: 'deposit', date: '03/12/2019'),
                        double('Transaction', amount: 10, balance: 20, type: 'withdraw', date: '03/12/2019')] }

  it 'can print a statement' do
    expect(statement.printStatement(transactions)).to eq("date  ||  credit  ||  debit  ||  balance\n03/12/2019  ||  30  ||  ||  30\n03/12/2019  ||  ||  10  ||  20\n")
  end

end
