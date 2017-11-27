class Statement
  attr_reader :history

  def initialize(history)
    @history = history
  end

  def print_statement
    puts "date || credit || debit || balance\n"
    @history.transactions.each do |transaction|
      if transaction.type == 'credit'
        print_debit(transaction)
      else
        print_credit(transaction)
      end
    end
  end

  private 

  def print_credit(transaction)
    puts "#{transaction.date} || #{'%.2f' % transaction.amount} || || #{'%.2f' % transaction.balance}"
  end

  def print_debit(transaction)
    puts "#{transaction.date} || || #{'%.2f' % transaction.amount} || #{'%.2f' % transaction.balance}"
  end
end
