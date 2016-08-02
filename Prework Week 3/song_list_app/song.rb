class Song

  def initialize(title, artist, duration, lyrics)
    @title = title
    @artist = artist
    @duration = duration
    @lyrics = lyrics
  end

  def title
    @title
  end

  def artist
    @artist
  end

  def duration
    @duration
  end

  def duration=(duration)
    @duration = duration
  end

  def lyrics
    @lyrics
  end

  def play
    puts "Now playing: " + @title
    `say #{@lyrics}`
  end

  def friendly_duration
    minutes = (@duration / 60).to_i
    seconds = @duration - (minutes * 60)
    minutes.to_s + " minutes, " + seconds.to_s + " seconds"
  end
end
