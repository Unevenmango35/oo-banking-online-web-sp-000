class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount, status="pending")
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = status
  end

  def valid?
    if sender.valid? && receiver.valid?
      then true
    else false
    end
  end

  def execute_transaction
    if !self.valid? || @sender.balance <= @amount
      @status = "rejected"
      

    elsif @status == "pending"
      BankAccount.all.map do |person|
        if person == @sender
          person.balance -=@amount
        elsif person == @receiver
        person.balance += @amount
        @status = "complete"
      end
    end
  end
end


end
