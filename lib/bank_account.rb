class BankAccount
  attr_accessor :balance, :status
  attr_reader :name

  def initialize (name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(num)
    @balance = @balance + num
  end

  def display_balance
    "Your balance is $#{self.balance}."
  end

  def valid?
    true if self.status == "open" && self.balance > 0
  end
end
