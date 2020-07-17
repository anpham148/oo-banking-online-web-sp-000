class BankAccount
  attr_reader :name

  def initialize (name)
    @name = name
    self.balance = 1000
  end

end
