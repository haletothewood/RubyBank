describe Transaction do
  type = 'debit'
  let(:transaction) { Transaction.new(type) }

  it 'is created with a date' do
    expect(transaction.date).to eq Date.today
  end

  it 'is created with a transaction type' do
    expect(transaction.type).to eq 'debit'
  end
end
