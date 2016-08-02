# Add the following methods to your Calculator class:
# multiply - returns the product of two numbers
# divide - returns the quotient of two numbers
# average - this method will accept 3 numbers as parameters and return the average. (The average would be the sum of the 3 numbers divided by 3.)

class Calculator

  def double(number)
    return number + number
  end

  def subtract(num1, num2)
    return num1 - num2
  end

  def square(number)
    return number ** 2
  end

  def multiply(num1, num2)
    return num1 * num2
  end

  def divide(num1, num2)
    unless num2 == 0
      return num1 / num2
    else
      return 'divisor cannot be zero!'
    end
  end

  def average(num1, num2, num3)
    return (num1 + num2 + num3) / 3
  end
end

calc = Calculator.new
puts calc.subtract(40, 25, 10)   # => Error!

