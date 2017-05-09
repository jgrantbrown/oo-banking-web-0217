require "pry"

class Transfer

  attr_accessor :amount, :sender, :receiver, :status

  def initialize(sender, receiver, amount)
    @sender= sender
    @receiver= receiver
    @amount = amount
    @status ="pending"
  end

  def valid?
    if (self.receiver.valid? == true) && (self.sender.valid? == true)
      true
    else
      false
    end
  end

  def execute_transaction
      if self.valid? == true && sender.balance > amount && self.status == "pending"
        receiver.balance += amount
        sender.balance -= amount
        self.status="complete"
      else
        self.status="rejected"
         "Transaction rejected. Please check your account balance."

      end
  end
  # your code here
end
