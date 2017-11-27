require 'account'

describe Account do
  balance = 1000
  let(:account) { Account.new(balance) }

  it 'is created with a balance of the amount provided upon creation' do
    expect(account.balance).to eq 1000
  end
end
