#Write a program that asks a person for their first, middle, and last name, and it will display their full name on one line.

puts "What is your first name?"
first = gets.chomp.capitalize

puts "What is your middle name?"
middle = gets.chomp.capitalize

puts "What is your last name?"
last = gets.chomp.capitalize

puts "Here's your full name:"
puts first + " " + middle + " " + last


