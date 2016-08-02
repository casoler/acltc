class Dog

  def set_name(text)
    @dogs_name = text
  end

  def name
    @dogs_name
  end

  def set_breed(text)
    @dogs_breed = text
  end

  def breed
    @dogs_breed
  end

  def set_age(number)
    @dogs_age = number
  end

  def age
    @dogs_age
  end
end

dog = Dog.new
dog.set_name("Bandit")
puts dog.name

dog.set_breed("beagle")
puts dog.breed

dog.set_age(8)
puts dog.age

puts "Our dog's name is " + dog.name + ".  He is a " + dog.breed + " and is " + dog.age.to_s + " years old.  He is the best dog around!  Go " + dog.name + "!"
