class Account
  attr_reader :balance

  def initialize(amount, transaction, history)
    @balance = amount
    @transaction = transaction
    @history = history
  end

  def deposit(amount)
    @balance += amount
    @history.add_transaction(@transaction.new('credit', amount, @balance))
  end

  def withdraw(amount)
    @balance -= amount
    raise 'You do not have the funds' if @balance < amount
    @history.add_transaction(@transaction.new('debit', amount, @balance))
  end
end
