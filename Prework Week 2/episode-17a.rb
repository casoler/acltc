#Write a program that asks the user to type in 10 words, one at a time. The program will then print out every other word.

# puts "Enter ten words."
# words = []
# index = 1

# 10.times do
#   puts "Word " + index.to_s + ":"
#   words << gets.chomp
#   index = index + 1
# end

# puts "Your words: " + words.join(", ")
# puts 'Every other word you entered:'

# index = 0
# words.each do |word|
#   if index % 2 == 0
#     puts word
#   end
#   index = index + 1
# end



#Write a program that asks the user to type in 10 words, one at a time. The program will only print out words that start with the letter a. (Check out the "start_with?" method available to strings.)
puts "Enter ten words."
words = []
index = 1

10.times do
  puts "Word " + index.to_s + ":"
  words << gets.chomp
  index = index + 1
end

puts "Your words: " + words.join(", ")

puts "Words that begin with 'a':"
any_a_word = false

words.each do |word|
  if word.downcase.start_with?('a')
    any_a_word = true
    puts word
  end
end

if any_a_word == false
  puts 'None!'
end
