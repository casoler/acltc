class Song

  def initialize(title, artist, lyrics)
    @title = title
    @artist = artist
    @lyrics = lyrics
  end

  def title=(text)
    @title = text
  end

  def title
    @title
  end

  def artist=(text)
    @artist = text
  end

  def artist
    @artist
  end

  def lyrics=(text)
    @lyrics = text
   end

  def lyrics
    @lyrics
  end

end

song = Song.new("Beyond the Sea", "Bobby Darin", "Somewhere beyond the sea, Somewhere waiting for me, My lover stands on golden sands, And watches the ships that go sailin'")

puts "'" + song.title + "', sung by " + song.artist + ", has the following lyrics: " + song.lyrics + "."
