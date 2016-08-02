score = 0

puts "Name an animal you would keep as a pet:"
animal = gets.chomp.downcase

puts "Name a mode of transportation:"
transportation = gets.chomp.downcase

puts "Name a fruit:"
fruit = gets.chomp.downcase

if animal == 'dog'
  score = score + 1
end

if transportation == 'train'
  score = score + 1
end

if fruit == 'guava'
  score = score + 1
end

puts "Your final score: " + score.to_s


