describe Transaction do
  let(:transaction) {Transaction.new}

  it "is created with a date" do
    expect(transaction.date).to eq Date.today
  end
end