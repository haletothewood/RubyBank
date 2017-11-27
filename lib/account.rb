class Account
  attr_reader :balance

  def initialize(amount, transaction)
    @balance = amount
    @transaction = transaction
  end

  def deposit(amount)
    @balance += amount
    @transaction.new('credit', @balance)
  end

  def withdraw(amount)
    @balance -= amount
    raise 'You do not have the funds' if @balance < amount
    @transaction.new('debit', @balance)
  end
end
