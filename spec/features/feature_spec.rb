require 'account'
require 'history'
require 'transaction'
require 'atm'
require 'statement'

describe 'My Bank Account' do
  atm = ATM.new(Account.new(0, Transaction, History.new), Statement)
  it 'lets you make a deposit' do
    atm.deposit(300)
  end
  it 'lets you withdraw money' do
    atm.withdraw(100)
  end
  it 'won\'t let you withdraw more than you have' do
    expect { atm.withdraw(400) }.to raise_error 'You do not have the funds'
  end
  it 'can print a statement' do
    expect { atm.show_statement }.to output(
      "date || credit || debit || balance\n2017-11-27 || 300 ||  || 300\n2017-11-27 || || 100 || 200\n"
    ).to_stdout
  end
end
