class BankAccount
attr_accessor :name, :balance, :status

def initialize(name)
  @name=name
  @balance = 1000
  @status = "open"
end

def deposit(amt)
  @balance += amt
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
  status = "close"
end

end
