class BankAccount
  attr_reader :name

  def initialize (name)
    @name = name
    balance
  end

  def balance
    @balance = 1000
  end
end
