class Transaction
  attr_reader :date, :type

  def initialize(type)
    @date = Date.today
    @type = type
  end
end
