describe Transaction do
  type = 'debit'
  balance = 1000
  let(:transaction) { Transaction.new(type, balance) }

  it 'is created with a date' do
    expect(transaction.date).to eq Date.today
  end

  it 'is created with a transaction type' do
    expect(transaction.type).to eq 'debit'
  end

  it 'is created with a remaining balance' do
    expect(transaction.balance).to eq 1000
  end
end
