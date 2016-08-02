# Recreate this Calculator class in your own text editor and try passing in a string as an argument to the double method instead of an actual number. What happens and why?

# class Calculator

#   def double_add(number)
#     return number + number
#   end

#   def double_multiply(number)
#     return number * 2
#   end
# end

# calc = Calculator.new
# puts calc.double_add('cat')          # => catcat
# puts calc.double_multiply('cat')     # => catcat

# Add a method to the Calculator class that will return the square of any number.

# class Calculator

#   def double(number)
#     return number + number
#   end

#   def square(number)
#     return number ** 2
#   end
# end

# calc = Calculator.new
# puts calc.double(4)                # => 8
# puts calc.square(8)                # => 64
# puts calc.double(calc.square(10))  # => 200
# puts calc.square(calc.double(10))  # => 400
# puts calc.square(calc.square(10))  # => 10000

# Create a new class called StringModifier. Then, add a method to the StringModifier class called “make_uppercase” that will accept a string as a parameter and return a new string that is an all uppercase version of the original string.

class StringModifier

  def make_uppercase(str)
    return str.upcase
  end

end

string = StringModifier.new
puts string.make_uppercase('learning something new everyday!')
