require 'date'

describe Statement do
  let(:transaction) do
    double :transaction, date: Date.parse('27-11-2017'),
                         type: 'debit',
                         amount: 500,
                         balance: 1500
  end
  let(:history) { double :history, transactions: [transaction] }
  let(:statement) { Statement.new(history) }

  it 'is created with a account history' do
    expect(statement.history).to eq history
  end

  context '#print_statement' do
    it 'prints the account information for the user to see' do
      expect { statement.print_statement }.to output(
        "date || credit || debit || balance\n27/11/2017 || 500.00 || || 1500.00\n"
      ).to_stdout
    end
  end
end
