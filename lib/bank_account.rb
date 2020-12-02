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


end
