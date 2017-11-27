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
  end
end
