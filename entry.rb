require_relative 'account'
require_relative 'transaction'

savings = Account.new(100)
current = Account.new(200)

transaction = Transaction.new(current, savings)
transaction.transfer(50)
