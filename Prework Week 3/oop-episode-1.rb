# Create a Song class that can produce a song instance that represents your favorite song. Include the song’s title, artist, and lyrics. NOTE: Hold onto this class! You’ll be needing it for many future exercises.

class Song

  def title
    'Climb Every Mountain'
  end

  def artist
    'Peggy Wood'
  end

  def lyrics
    "A dream that will need
     All the love you can give
     Everyday of your life
     For as long as you live

     Climb ev'ry mountain
     Ford ev'ry stream
     Follow ev'ry rainbow
     Till you find your dream"
   end

end

song = Song.new
puts song.title
puts song.artist
puts song.lyrics
# Create a Cat class that can produce a particular type of cat. Include the cat’s name, breed, and age.

class Cat

  def name
    "Daisy Lu"
  end

  def breed
    "calico"
  end

  def age
    9
  end

  def vocabulary
    'meow!'
  end

end

cat = Cat.new
puts cat.name
puts cat.breed
puts cat.age
puts cat.vocabulary
