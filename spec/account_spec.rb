require 'account'

describe Account do
  balance = 1000
  amount = 500
  let(:transaction) { double :transaction, type: nil, balance: nil }
  let(:account) { Account.new(balance, transaction) }

  it 'is created with a balance of the amount provided upon creation' do
    expect(account.balance).to eq 1000
  end

  before :each do
    allow(transaction).to receive(:new)
  end

  context '#deposit' do
    it 'credits a deposited amount to the balance' do
      expect { account.deposit(amount) }.to change {
        account.balance
      }.by 500
    end
    it 'creates a new transaction' do
      expect(transaction).to receive(:new)
      account.deposit(amount)
    end
  end

  context '#withdraw' do
    it 'debits a withdrawn amount from the balance' do
      expect { account.withdraw(amount) }.to change {
        account.balance
      }.by(- 500)
    end

    it 'doesn\'t allow a user to withdraw more than is available' do
      invalid_amount = 2000
      expect { account.withdraw(invalid_amount) }.to raise_error(
        'You do not have the funds'
      )
    end

    it 'creates a new transaction' do
      expect(transaction).to receive(:new)
      account.deposit(amount)
    end
  end
end
