#Write a program that asks the user to type in a word, and the program outputs the word in two different ways: A) It displays the string in reverse B) It displays the string in all capital letters.

puts "Enter a word:"
word = gets.chomp

puts "Your word in reverse: " + word.reverse
puts "Your word in caps: " + word.upcase
puts "Your word in reverse caps: " + word.reverse.upcase
