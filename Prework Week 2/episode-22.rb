# Write a program that allows the user to enter a city and state and displays sunrise and sunset for that city.
# require 'weather_hash'

# puts 'Welcome to the Sun Schedule App!'

# puts 'Please enter a city:'
# city = gets.chomp.capitalize

# puts 'Now enter the state abbreviation for that city:'
# state = gets.chomp.upcase

# data = WeatherHash.lookup(city, state)

# puts city + ", " + state + " sunrise: " + data["channel"]["astronomy"]["sunrise"] + ", sunset: " + data["channel"]["astronomy"]["sunset"]

# Write a program that allows the user to enter a city and state and displays the 7 day forecast in an easy to read format. Include the day of the week, high, low, and text (e.g. "Partly Cloudy") for each day.
require 'weather_hash'

puts 'Welcome to the Weather Forecast App!'

puts 'Please enter a city:'
city = gets.chomp.capitalize

puts 'Now enter the state abbreviation for that city:'
state = gets.chomp.upcase

data = WeatherHash.lookup(city, state)

puts "7-day forecast for " + city + ", " + state + ":"

index = 0
data["channel"]["item"]["forecast"].each do |forecast|
  if index < 7
    puts forecast["day"] + ", " + forecast["date"] + ": " + forecast["text"]
    puts "                  high " + forecast["high"] + " low " + forecast["low"]
    puts
  end
  index = index + 1
end





