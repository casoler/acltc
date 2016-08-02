# Add the following methods to your Calculator class:
# multiply - returns the product of two numbers
# divide - returns the quotient of two numbers
# average - this method will accept 3 numbers as parameters and return the average. (The average would be the sum of the 3 numbers divided by 3.)

class Calculator

  def subtract(num1, num2)
    return num1 - num2
  end
end

calc = Calculator.new
puts calc.subtract(40, 25, 10)   # => Error!

