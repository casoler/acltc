#Write a program that asks the user for a starting year, and an ending year. Calculate the number of years between them and output the result (for example, between 1990 and 1995 there were 5 years).

puts "Enter a starting year:"
start_year = gets.chomp.to_i

puts "Enter an ending year:"
end_year = gets.chomp.to_i

puts "Number of years between the two:"
puts start_year - end_year

