#Write a program that asks the user to guess a number between 1 and 100. If the user guesses 75, it should display a message that the user won.

puts "Enter a number between 1 and 100.  If you guess the right number, then you win!"
number = gets.chomp.to_i

if number == 75
  puts "You win!"
end
