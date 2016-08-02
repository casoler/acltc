puts "Enter a number between 1 and 100."
input = gets.chomp.to_i

if input == 75
  puts "You guessed correctly!  You win!"
else
  puts "Wrong...  You lose!"
end
