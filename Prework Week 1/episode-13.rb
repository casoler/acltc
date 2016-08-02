#Create a program that counts by 2's: 2, 4, 6, 8, etc. until it reaches 100.

num = 1

100.times do
  if num % 2 == 0
    puts num
  end
  num = num + 1
end

#Create a program that asks a user for 10 numbers and then returns the sum.

# sum = 0
# 10.times do
#   puts "Enter a number:"
#   input_num = gets.chomp.to_i
#   sum = sum + input_num
# end

# puts 'Sum of 10 numbers = ' + sum.to_s

#Create a program that calculates averages. The program will first ask the user how many numbers they'd like to enter. Then, the program will prompt the user to enter each number. Finally, the program will tell the user the average of all of the numbers. Remember: To find the average of numbers, you get the sum of all the numbers and divide that sum by the count of how many numbers there are. For example, if the user enters: 11, 7, 30, 22, 55 the average will be 25. This is because 11 + 7 + 30 + 22 + 55 = 125, and 125 / 5 (the amount of numbers in the list) = 25.

sum = 0

puts "An Averages Calculation Program"
puts "How many numbers would you like to enter?"
num_of_inputs = gets.chomp.to_i
next_num = 0

num_of_inputs.times do
  next_num = next_num + 1
  puts "Enter number " + next_num.to_s + ":"
  num = gets.chomp.to_i
  sum = sum + num
end

puts "The average of the numbers is: "
puts sum / num_of_inputs
