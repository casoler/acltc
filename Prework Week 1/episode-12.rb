# Create a fortune teller which tells the user a fortune based on the user's favorite number.

# 1, 2 - receive a letter
# 3 - great luck
# 4, 5, 6, 7 - handsome stranger
# 8, 9, 10 - win office pool

puts "Dahling... Please tell me your favorite number.  From 1 to 10 please."
input = gets.chomp.to_i

if input < 1 #should be error
  puts "You will have terrible financial troubles, dahling."
elsif input > 10 #should be error
  puts "You need to go to school, dahling."
elsif input == 3
  puts "Ahh!  A very good number, dahling.  You will have great luck all of your life."
elsif input < 3
  puts "You will receive a mysterious letter tomorrow, dahling."
elsif input < 8
  puts "A dark handsome stranger will knock on your door tomorrow, dahling."
else
  puts "You will win next year's NCAA bracket office pool, dahling."
end


