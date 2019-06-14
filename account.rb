class Account
  attr_accessor :balance
  attr_reader   :cleared_balance # Define an accessor for cleared_balance...
  protected     :cleared_balance # ...but only have it available to other Account instances

  def initialize(balance)
    @balance = balance
  end

  protected

  def greater_balance_than?(other)
    @cleared_balance > other.cleared_balance
  end
end
