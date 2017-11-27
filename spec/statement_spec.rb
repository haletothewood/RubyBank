require 'date'

describe Statement do

  let(:transaction) {double :transaction, 
                            date: Date.today, 
                            type: 'debit', 
                            amount: 500, 
                            balance: 1500
                    }
  let(:history) { double :history, transactions: [transaction] }
  let(:statement) { Statement.new(history) }

  it 'is created with a account history' do
    expect(statement.history).to eq history
  end
end
    