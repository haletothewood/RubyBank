require 'account'
require 'history'
require 'transaction'

describe 'Account' do
  account = Account.new(0, Transaction, History.new)
  it 'lets you make a deposit' do
    account.deposit(300)
  end
  it 'lets you withdraw money' do
    account.withdraw(100)
  end
  it 'won\'t let you withdraw more than you have' do
    expect { account.withdraw(400) }.to raise_error 'You do not have the funds'
  end
end
