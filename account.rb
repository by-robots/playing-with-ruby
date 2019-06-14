class Account
  attr_accessor :balance
  attr_reader   :cleared_balance

  def initialize(balance)
    @balance = balance
  end

  protected

  def greater_balance_than?(other)
    @cleared_balance > other.cleared_balanace
  end
end
