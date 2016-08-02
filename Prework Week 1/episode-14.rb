puts "Welcome! We're going to ask you to enter 5 words, one at a time."

5.times do
  puts "Please enter a word:"
  word = gets.chomp

  if word == "bye"
    puts "No, please don't leave!"
  elsif word == "hello"
    puts "Hello to you!"
  else
    puts "That's quite a word!"
  end
end
