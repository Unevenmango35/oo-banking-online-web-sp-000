class BankAccount
attr_accessor :name, :balance, :status

def initialize(name, balance=1000)
  @name=name
  @balance = balance
  @status = "open"
end

def deposit(amt)
  @balance += amt
  @balance
end

def display_balance
  @balance
end

def valid?
  if @status == "open" && @balance > 0
    then true
  else false
  end
end

def close_account
  status = "closed"
end

end
