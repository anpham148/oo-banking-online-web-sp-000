class Transfer
  # your code here
  attr_reader :sender, :receiver
  def initialize (sender, receiver, num)
    @sender = sender
    @receiver = receiver
    @status = "pending"
  end
end
