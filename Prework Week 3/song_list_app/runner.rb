require_relative "list"
require_relative "song"

list = List.new

song = Song.new("Crazy Little Thing Called Love", "Queen", 163, "This thing called love")
list.add_song(song)

song = Song.new("Gold Dust Woman", "Fleetwood Mac", 305, "Did she make you cry")
list.add_song(song)

list.add_song(Song.new("Give a Little Bit", "Supertramp", 248, "Give a little bit"))

puts "list of songs:"
list.songs.each do |song|
  puts song.title + "  artist: " + song.artist + "  duration:" + song.duration.to_s + " seconds OR " + song.friendly_duration
  puts "  lyrics: " + song.lyrics
end

puts "----------------------"

puts "play the list in order:"
list.play
puts "----------------------"

puts "play the list in random order:"
list.shuffle
puts "----------------------"

puts "duration of entire play list: " + list.duration.to_s + " seconds"
puts "----------------------"
