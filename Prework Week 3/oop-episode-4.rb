class Song

  def set_title(text)
    @title = text
  end

  def title
    @title
  end

  def set_artist(text)
    @artist = text
  end

  def artist
    @artist
  end

  def set_lyrics(text)
    @lyrics = text
   end

  def lyrics
    @lyrics
  end

end

song = Song.new
song.set_title("You Gotta Fight For Your Right To Party")
puts song.title

song.set_artist("Beastie Boys")
puts song.artist

song.set_lyrics("You wake up late for school, man you don't want to go
                 You ask you mom, please?, but she still says, no!
                 You missed two classes, and no homework
                 But your teacher preaches class like you're some kind of jerk

                 You gotta fight for your right to party

                 Your pop caught you smoking, and he said, no way!
                 That hypocrite smokes two packs a day
                 Man, living at home is such a drag
                 Now your mom threw away your best porno mag (bust it!)

                 You gotta fight for your right to party
                 You gotta fight

                 Don't step out of this house if that's the clothes you're gonna wear
                 I'll kick you out of my home is you don't cut that hair
                 Your mom busted in and said, what's that noise?
                 Aw, mom you're just jealous it's the Beastie Boys!

                 You gotta fight for your right to party
                 You gotta fight for your right to party

                 Party
                 Party")
puts song.lyrics
