require 'transaction'

RSpec.describe Transaction do

  before(:each) do
    @transaction = Transaction.new(20, 20, 'deposit', "2019-03-11")
  end

  it 'can store the amount of a transaction' do
    expect(@transaction.amount).to eq(20)
  end

  it 'can store the balance' do
    expect(@transaction.balance).to eq(20)
  end

  it 'can store type of the transaction' do
    expect(@transaction.type).to eq('deposit')
  end

  it 'can store the date when the transaction was made' do
    expect(@transaction.date).to eq('2019-03-11')
  end

end
