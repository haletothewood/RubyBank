describe History do
  let(:history) { History.new }
  let(:transaction) { double :transaction }

  it 'is created with no previous transactions' do
    expect(history.transactions).to be_empty
  end

  it 'can recieve a transaction and store it' do
    expect { history.add_transaction(transaction) }.to change {
      history.transactions.length
    }.by 1
  end
end
