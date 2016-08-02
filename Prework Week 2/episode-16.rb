#Write a program that asks the user to enter 10 words, one at a time. The program should then display all 10 words in alphabetical order. Write this program using a loop so that you don't have to write any additional lines of code if you were to change the program to ask the user for 100 words. That is, you'd only need to make one simple change, and not have to write any new lines of code.

num_of_words = 10
word_array = []
index = 1

puts "Enter " + num_of_words.to_s + " words to put in alphabetical order."

num_of_words.times do
  puts "Enter word " + index.to_s + ":"
  word = gets.chomp

  if word == ""
    word_array << '-'
  else
    word_array << word
  end
  index = index + 1
end

puts "Here are your words in alphabetical order:"
puts word_array.sort.join(", ")

# Write a program that asks the user to enter a word, and the program will output the letters of that word in random order. (For example, "cat" may output "atc" or "tac" or "act" etc.) To accomplish this, investigate the following methods:
# The string's "split" method
# The array's "shuffle" method
# The array's "join" method

puts "Enter a word:"
word = gets.chomp
shuffled_word = word.split(//).shuffle.join

message = "Uh-oh!  I lost..."
index = 1

10000000.times do
  puts shuffled_word
  if word == shuffled_word
    message = "Phew!  I got it in " + index.to_s + " tries!"
    break
  else
    shuffled_word = shuffled_word.split(//).shuffle.join
    index = index + 1
  end
end

puts message
