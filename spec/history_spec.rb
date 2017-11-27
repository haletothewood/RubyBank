describe History do
  let(:history) { History.new }

  it 'is created with no previous transactions' do
    expect(history.transactions).to be_empty
  end
end
