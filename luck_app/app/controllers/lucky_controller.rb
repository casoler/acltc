class LuckyController < ApplicationController

  def fortune_teller
    fortunes = ["Give person fish, he eat for day. Teach person to fish, he always smell funny",
                "Person who argues with idiot is taken for fool",
                "Look before you leap. Or wear a parachute",
                "The end is near, might as well have dessert",
                "This fortune no good. Try another",
                "Wise husband is one who thinks twice before saying nothing",
                "Marriage lets you annoy one special person for the rest of your life",
                "Run",
                "Make love, not bug",
                "You will read this and say 'Geez! I could come up with better fortunes than that'",
                "I cannot help you, for I’m just a cookie",
                "The fortune you seek, is in another cookie",
                "Don’t eat any Chinese food today or you’ll be sick",
                "About time I got out of that cookie",
                "Come back later….I’m sleeping (yes, cookies need their sleep too",
                "You will be hungry again in one hour",
                "You will die alone and poorly dressed",
                "Warning: do not eat your fortune",
                "If you can read this, you are literate. Congratulations",
                "Made in the USA"]

    index = rand(20)
    @fortune = fortunes[index]
  end

  def lottery_numbers
    @numbers_array = []

    while @numbers_array.length < 6 do
      num = rand(60)
      unless @numbers_array.include? num
        @numbers_array << num
      end
    end
    @numbers_array.sort!
  end

  def how_many_bottles
    index = 99

    while index >= 0
      @num = index





end
