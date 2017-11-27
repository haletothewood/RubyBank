require 'account'

describe Account do
    let(:account) { Account.new }

  it "is created with a default balance balance" do
    expect(account.balance).to eq 0
  end
end