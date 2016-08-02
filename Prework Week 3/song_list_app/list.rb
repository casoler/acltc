class List

  def initialize
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def play
    @songs.each do |song|
      song.play
    end
  end

  def shuffle
    @songs.shuffle.each do |song|
      song.play
    end
  end

  def duration
    total_duration = 0

    @songs.each do |song|
      total_duration = total_duration + song.duration
    end

    total_duration
  end
end
