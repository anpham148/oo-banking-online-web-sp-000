class Transfer
  # your code here
  attr_reader :sender, :receiver, :status, :amount
  def initialize (sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    @sender.valid? && @receiver.valid? ? true : false
  end

  def execute_transaction
    if @status == "pending" && @sender.balance >= @amount && self.valid?
      @sender.balance = @sender.balance - @amount
      @receiver.balance = @receiver.balance + @amount
      @status = "complete"
    elsif @status == "pending" && @sender.balance < @amount && !self.valid?
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end

  end
end
