#Write a program that asks how old a person in years is and it will display how old the person is in terms of seconds.

puts "How old are you (in years)?  Please input just a number."
age = gets.chomp.to_i

# according to https://en.wikipedia.org/wiki/Leap_year, a gregorian calendar year = 365.2425 days
# years > days > hours > minutes > seconds
seconds = age * 365.2425 * 24 * 60 * 60

puts "Here's your age in seconds!  Sorry - it doesn't include the number of seconds since your birthday."
puts seconds.to_i
