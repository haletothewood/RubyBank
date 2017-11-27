require 'account'

describe Account do
  balance = 1000
  let(:account) { Account.new(balance) }

  it 'is created with a balance of the amount provided upon creation' do
    expect(account.balance).to eq 1000
  end

  context '#deposit' do
    it 'credits a deposited amount to the balance' do
      expect { account.deposit(500) }.to change { account.balance }.by 500
    end
  end

  context '#withdraw' do
    it 'debits a withdrawn amount from the balance' do
      expect { account.withdraw(500) }.to change { account.balance }.by(- 500)
    end

    it 'doesn\t allow a user to withdraw more than is available' do
      expect { account.withdraw(2000) }.to raise_error(
        'You do not have the funds'
      )
    end
  end
end
