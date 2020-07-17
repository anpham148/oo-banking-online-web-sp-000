class BankAccount
  attr_reader :name

  def initialize (name)
    @name = name
    
  end

  def balance
    @balance = 1000
  end
end
