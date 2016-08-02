# The 'transfer_funds_to' method is essentially dealing with two different bank accounts (a.k.a. two bank account instances). How does it know which bank account to withdraw money from and which bank account to deposit money to?



# Recreate the BankAccount in your own text editor.
#   Add an attribute that indicates whether the account is a checking account, a savings account, or a CD.
#   Update the withdraw method so that if one withdraws money from a CD, they also lose an additional 10% of the money they’re withdrawing due to penalties. For example, if one is withdrawing 10 dollars, they also get hit with a 1 dollar penalty. So if they were withdrawing 10 dollars from a CD that contained 100 dollars, they’d be left with 89 dollars.
#   Update the transfer_funds_to method to ensure that one cannot transfer funds from a CD or to a CD.

class BankAccount

  def initialize(starting_balance, type)
    @balance = starting_balance
    @account_type = type
  end

  def account_type=(type)
    @account_type = type
  end

  def account_type
    @account_type
  end

  def balance
    @balance
  end

  def deposit(money)
    @balance = @balance + money
  end

  def withdraw(money)
    @penalty = penalty(money)
    if @balance - money - @penalty >= 0
      @balance = @balance - money - @penalty
      money
    else
      0
    end
  end

  def penalty(money)
    if account_type == 'CD'
      money * 0.1
    else
      0
    end
  end

  def transfer_funds_to(bank_account, money)
    unless account_type == 'CD' || bank_account.account_type == "CD"
      available_funds = withdraw(money)
      bank_account.deposit(available_funds)
    else
      puts 'unable to tranfer to/from CD account'
    end
  end
end

account1 = BankAccount.new(100, 'CD')
account2 = BankAccount.new(300, 'checking')
account3 = BankAccount.new(200, 'CD')
account4 = BankAccount.new(400, 'savings')

puts "account1 balance " + account1.balance.to_s
puts "account2 balance " + account2.balance.to_s
puts "account3 balance " + account3.balance.to_s
puts "account4 balance " + account4.balance.to_s

account1.withdraw(10)
puts "account1 after $10 withdrawal " + account1.balance.to_s

account2.withdraw(10)
puts "account2 after $10 withdrawal " + account2.balance.to_s

account1.transfer_funds_to(account2, 30)
puts "account1 after $30 transfer to account2 " + account1.balance.to_s
puts "account2 after $30 transfer from account1 " + account2.balance.to_s

account1.transfer_funds_to(account3, 30)
puts "account1 after $30 transfer to account3 " + account1.balance.to_s
puts "account3 after $30 transfer from account1 " + account3.balance.to_s

account4.transfer_funds_to(account1, 30)
puts "account4 after $30 transfer to account1 " + account4.balance.to_s
puts "account1 after $30 transfer from account4 " + account1.balance.to_s

account4.transfer_funds_to(account2, 30)
puts "account4 after $30 transfer to account2 " + account4.balance.to_s
puts "account2 after $30 transfer from account4 " + account2.balance.to_s
