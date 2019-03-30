# require 'pry'

class Transfer
  # your code here
  attr_accessor :sender, :receiver, :amount, :status
  #
  def initialize(sender,receiver,amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    @sender.valid?
    @receiver.valid?
end

def execute_transaction
  # binding.pry
#need to transfer from the sender account to the receiver account
if sender.valid? == true
sender.balance = sender.balance - amount
receiver.balance = receiver.balance + amount
@status = "complete"
if sender.valid? == false
  return "Transaction rejected. Please check your account balance."
  @status = "rejected"
# receiver.balance
  end
end
end


end
