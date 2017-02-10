class BankAccount
  attr_reader :name
  attr_accessor :balance, :status, :deposit

  def initialize(name)
      @name=name
      @balance= 1000
      @status="open"

  end

  def deposit(num)
    @balance += num
  end

  def display_balance
    "Your balance is $#{@balance}."
  end

  def valid?
    if @status = open
  end
end
