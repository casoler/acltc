# Use hashes to define three types of cars. Identify the cars' make (brand), model, color, and year. (Example: a silver 2006 Honda Accord)
# cars = []

# cars << {"make" => 'Aston Martin', "model" => 'DB5', "color" => 'silver', "year" => 1963, "movies" => ["Goldfinger", "Thunderball", "GoldenEye", "Tomorrow Never Dies", "Casino Royale", "Skyfall", "Spectre"] }
# cars << {"make" => 'Alfa Romeo', "model" => '159', "color" => 'silver', "year" => 2004, "movies" => ["Quantum of Solace", "Spectre"]}
# cars << {"make" => 'Bentley', "model" => '4½ Litre', "color" => 'black', "year" => 1933, "movies" => ["Live and Let Die", "Moonraker"]}

# index = 1

# puts "Cars driven by James Bond (007):"
# cars.each do |car|
#   puts "Car " + index.to_s + ":  " + car["year"].to_s + " " + car["color"].capitalize + " " + car["make"] + " " + car["model"] + " appeared in " + car["movies"].join(", ")
#   index = index + 1
# end



# Assume you have the following code:

# drink1 = {"name" => "Seltzer", "ingredients" => ["water", "bubbles"]}
# drink2 = {"name" => "Coca Cola", "ingredients" => ["water", "bubbles", "sugar", "brown food coloring"]}
# drink3 = {"name" => "water", "ingredients" => ["hydrogen", "oxygen"]}

# Write additional code so that the terminal outputs:

# The drink Seltzer has the ingredients: water, bubbles.
# The drink Coca Cola has the ingredients: water, bubbles, sugar, brown food coloring.
# The drink water has the ingredients: hydrogen, oxygen.

# Note: Write the code in such a way that it would still work even if someone went into the hashes and changed the number of ingredients for any particular drink.

drinks = []
drink1 = {"name" => "Seltzer", "ingredients" => ["water", "bubbles"]}
drink2 = {"name" => "Coca Cola", "ingredients" => ["water", "bubbles", "sugar", "brown food coloring"]}
drink3 = {"name" => "water", "ingredients" => ["hydrogen", "oxygen"]}

drinks << drink1
drinks << drink2
drinks << drink3

drinks.each do |drink|
  puts "The drink " + drink["name"] + " has the ingredients: " + drink["ingredients"].join(", ") + "."
end



