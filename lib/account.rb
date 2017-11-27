class Account
  attr_reader :balance

  def initialize(amount, transaction, history)
    @balance = amount
    @transaction = transaction
    @history = history
  end

  def deposit(amount)
    @balance += amount
    @history.transactions << @transaction.new('credit', @balance)
  end

  def withdraw(amount)
    @balance -= amount
    raise 'You do not have the funds' if @balance < amount
    @transaction.new('debit', @balance)
  end
end
