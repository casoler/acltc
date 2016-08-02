# Assuming we have the following code:

people = [
  {
    "first_name" => "Bob",
    "last_name" => "Jones",
    "hobbies" => ["basketball", "chess", "phone tag"]
   },
   {
    "first_name" => "Molly",
    "last_name" => "Barker",
    "hobbies" => ["programming", "reading", "jogging"]
   },
   {
    "first_name" => "Kelly",
    "last_name" => "Miller",
    "hobbies" => ["cricket", "baking", "stamp collecting"]
   }
]                                                             # 1

people.each do |person|                                       # 2         13          24
  person["hobbies"].each do |hobby|                           # 3  6   9  14  17  20  25  28  31
    puts hobby.upcase                                         # 4  7  10  15  18  21  26  29  32
  end                                                         # 5  8  11  16  19  22  27  30  33
end                                                           #       12          23          34


# Perform an exercise similar to Episode 13a, in which you mark down the order in which each line of code runs.

# Start with this code:

people = [
  {
    "first_name" => "Bob",
    "last_name" => "Jones",
    "hobbies" => ["basketball", "chess", "phone tag"]
   },
   {
    "first_name" => "Molly",
    "last_name" => "Barker",
    "hobbies" => ["programming", "reading", "jogging"]
   },
   {
    "first_name" => "Kelly",
    "last_name" => "Miller",
    "hobbies" => ["cricket", "baking", "stamp collecting"]
   }
]

people.each do |person|
  person["age"] = rand(100) + 1
  person["email"] = person["first_name"].downcase + person["last_name"].downcase + "@gmail.com"
  p person
end

# It's an array of hashes that is used to represent data about different people. Using an each loop, the rest of your program should add additional keys and values to each person (in addition to the existing first_name, last_name, and hobbies), as follows: Each person should be given a random age. Hint: Using rand(100) will help you generate a random number from 0 to 99. Each person should given an email address that consists of their first name + last name @ gmail.com. For example, Bob Jones will have an email of bobjones@gmail.com. The program should end with:
p people
# so that you can see if the correct modifications were made to each hash.
