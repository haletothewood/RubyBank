class Account
  attr_reader :balance

  def initialize(amount)
    @balance = amount
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
    raise 'You do not have the funds' if @balance < amount
  end
end
