puts "Welcome to the Guess the Number Game!  "
puts "Guess a number between 1 and 100."
answer = rand(100) + 1
puts answer
num_of_guesses = 0

puts "Please guess a number:"

10.times do
  guess = gets.chomp.to_i
  num_of_guesses = num_of_guesses + 1

  if num_of_guesses == 9
    puts 'last chance...'

  end

  if guess == answer
    puts "You've won!"
    puts "It took " + num_of_guesses.to_s + " guesses to win."
    break
  elsif guess < answer
    if num_of_guesses == 10
      puts 'You lose...'
    else
      puts "Guess higher."
    end
  elsif guess > answer
    if num_of_guesses == 10
      puts 'You lose...'
    else
      puts "Guess lower."
    end
  end
end





