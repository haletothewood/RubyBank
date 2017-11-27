require 'date'

describe ATM do 

  let(:transaction) { double :transaction, type: nil, balance: nil }
  let(:history) { double :history, transactions: [] }
  let(:account) { double :account, amount: 1000, transaction: transaction, history: history }
  let(:statement) { double :statement }
  let(:atm) { ATM.new(account, statement) }
  
  it "is created with an account" do
    expect(atm.account).to be account
  end

  it "is can instruct a statement to print" do
    expect(statement).to receive(:print_statement)
    atm.show_statement
  end
end