class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(status="pending")
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = status
  end

  def valid?(sender,receiver)
    if sender.valid? && receiver.valid?
      then true
    else false
    end
  end

  def execute_transaction
    if !self.valid? && @sender.balance <=@amount
      @status = "rejected"
      @status = "Transaction rejected. Please check your account balance."
    else


end
