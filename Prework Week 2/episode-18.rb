# Write a program that serves as a dictionary. To keep it simple, the dictionary will only contain five words and their definitions. When the user starts the program, the program lists all five words that the user can look up. The user can then enter a word, and the program will return its definition.

dictionary = {"truculence" => "obstreperous and defiant aggressiveness",
              "unfledged"  => "young and inexperienced",
              "morose"     => "showing a brooding ill humor",
              "bilious"    => "irritable as if suffering from indigestion",
              "pied"       => "having sections or patches colored differently and usually brightly"}

puts "Here are the words in the dictionary: "

dictionary.each do |word, definition|
  puts word
end

puts ''
puts "Enter a word to get the definition."

word = gets.chomp.downcase

if dictionary[word] == nil
  puts 'Oops, you typed in a word not in the dictionary!'
else
  puts word + ":  " + dictionary[word]
end


