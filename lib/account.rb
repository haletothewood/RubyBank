class Account
  attr_reader :balance

  def initialize(amount, transaction, history)
    @balance = amount
    @transaction = transaction
    @history = history
  end

  def deposit(amount)
    @balance += amount
    add_transaction(@transaction.new('credit', @balance))
  end

  def withdraw(amount)
    @balance -= amount
    raise 'You do not have the funds' if @balance < amount
    add_transaction(@transaction.new('debit', @balance))
  end

  private

  def add_transaction(transaction)
    @history.transactions << transaction
  end
end
