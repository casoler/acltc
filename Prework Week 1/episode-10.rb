puts "Enter your first name:"
name = gets.chomp

if name == 'Suzie'
  puts 'Hey, ' + name + '!'
end


puts "Enter your first name:"
name = gets.chomp

if name.downcase == 'suzie'
  puts 'Hey, ' + name.capitalize + '!'
end

first_name = "Masha"
last_name = "Antonovich"
age = "37"
puts "Your name is " + first_name + " " + last_name + " and you are " + age + " years old."
