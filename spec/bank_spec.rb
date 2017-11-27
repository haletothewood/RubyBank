require 'account'

describe Account do
  balance = 1000
  let(:account) { Account.new(balance) }

  before :each do
    amount = 500
  end

  it 'is created with a balance of the amount provided upon creation' do
    expect(account.balance).to eq 1000
  end

  context '#deposit' do
    it 'credits a deposited amount to the balance' do
      amount = 500
      expect { account.deposit(amount) }.to change {
        account.balance
      }.by 500
    end
  end

  context '#withdraw' do
    it 'debits a withdrawn amount from the balance' do
      amount = 500
      expect { account.withdraw(amount) }.to change {
        account.balance
      }.by -500
    end

    it 'doesn\t allow a user to withdraw more than is available' do
      invalid_amount = 2000
      expect { account.withdraw(invalid_amount) }.to raise_error(
        'You do not have the funds'
      )
    end
  end
end
