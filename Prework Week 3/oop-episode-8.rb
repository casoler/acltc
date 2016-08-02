# Recreate the Person class in your own text editor.
  # Add a method called full_name that returns the person’s full name as a string.
  # Add a method called email that returns the person’s email address as a string. The person’s email is has the format: “firstname.lastname@gmail.com".
  # Add a method called info that returns a string that describes the person in a user friendly format. The catch: Make sure it works no matter how many hobbies a person has! (Hint: Consider using an each loop.)

class Person

  def initialize(first_name, last_name, hair_color, hobbies)
    @first_name = first_name
    @last_name = last_name
    @hair_color = hair_color
    @hobbies = hobbies
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def full_name
    @first_name + " " + @last_name
  end

  def email
    @first_name.downcase + "." + @last_name.downcase + "@gmail.com"
  end

  def hair_color
    @hair_color
  end

  def hobbies
    @hobbies
  end

  def add_hobby(hobby)
    @hobbies << hobby
  end

  def info
    full_name + " (" + email + ") has " + @hair_color + " colored hair and has " + hobbies.length.to_s + " hobbies.  They are: " + @hobbies.join(", ") + "."
  end
end

people = [
  Person.new("Bob", "Jones", "pink", ["basketball", "chess", "phone tag"]),
  Person.new("Molly", "Parker", "black", ["computer programming", "reading", "jogging"]),
  Person.new("Kelly", "Miller", "rainbow", ["cricket", "baking", "stamp collecting"])
]

people.each do |person|
  p = person
  if p.first_name == "Kelly"
    p.add_hobby("dog sitting")
  end

  puts p.full_name
  puts p.email
  puts p.info
  puts ""
end


# Below the Person class, create a ContactList class. The ContactList should have two attributes:
# title - this represents what list this is (e.g. “friends”, “business contacts”)
# contacts - this should be an array. It will contain numerous instances of the Person class.

# Add an instance method to the ContactList class called “add_contact” that will add a Person instance to the particular contact list.

class ContactList

  def initialize(title, contacts)
    @title = title
    @contacts = contacts
  end

  def title
    @title
  end

  def contacts
    @contacts
  end

  def add_contact(contact)
    @contacts << contact
  end
end

cl2 = ContactList.new('business associates', [])
cl2.add_contact(people[2])
puts cl2.title
cl2.contacts.each do |contact|
  puts contact.full_name
end

cl1 = ContactList.new('friends', [people[0], people[1]])
puts cl1.title
cl1.contacts.each do |contact|
  puts contact.full_name
end
