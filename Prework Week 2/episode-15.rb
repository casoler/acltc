#Start a program with the following line of code:
#words = ["zebra", "monkey", "aardvark"]
#and write additional code so that the program outputs those three words in alphabetical order.

words = ["zebra", "monkey", "aardvark"]
puts words.sort


#Create a program that asks a user to enter four different words, one at a time. Then, the computer will ask the user to choose a number between 0 and 3. The computer will then display the word corresponding to the correct number. For example, assume the user typed in the words: "ghost", "umbrella", "candy", and "pepperoni" - in that order. The user is then prompted to choose a number. If the user chooses the number 2, the computer displays the third word, which in this example is "candy".

puts "You'll be entering four different words."
word_array = []
index = 0

4.times do
  puts "Enter a word."
  word_array[index] = gets.chomp
  index = index + 1
end

puts "Now enter a number between 0 and 3."
puts "That number corresponds to word: " + word_array[gets.chomp.to_i]


#Create a program that calculates the median of numbers. The program will first ask the user how many numbers they'd like to enter. Then, the program will prompt the user to enter each number. Finally, the program will tell the user the median of all of the numbers. The definition of a median number is found here. Note from that article that the method for determining the median can change depending on whether there are an even or odd amount of numbers. Your program should handle both cases.

puts "Let's calculate the median of a set of numbers."
puts "How many numbers will you be entering?"
num_of_entries = gets.chomp.to_i
num_array = []
index = 0

num_of_entries.times do
  puts "Enter a number."
  num_array[index] = gets.chomp.to_i
  index = index + 1
end

puts "Here's your array of numbers as you typed them in:"
p num_array

puts "Here's your sorted array of numbers:"
num_array = num_array.sort
p num_array

if num_of_entries % 2 == 1
  median = num_array[num_of_entries/2]
else
  midpoint1 = num_of_entries / 2
  midpoint2 = midpoint1 + 1
  median = (num_array[midpoint1-1] + num_array[midpoint2-1]) / 2
end

puts "The median = " + median.to_s




