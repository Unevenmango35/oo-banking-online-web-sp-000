class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(status="pending")
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = status
  end

  def valid?(sender,receiver)
    if sender.status && receiver.status
      then true
    else false
    end
  end
  

end
