# Add an ‘info’ instance method to your Song class that returns a string that contains information about the song in an easy to read format.

# class Song

#   def initialize(name, description, price)
#     @name = name
#     @description = description
#     @price = price
#   end

#   def name=(text)
#     @name = text
#   end

#   def name
#     @name
#   end

#   def description=(text)
#     @description = text
#   end

#   def description
#     @description
#   end

#   def price=(text)
#     @price = text
#    end

#   def price
#     @price
#   end

#   def info
#     "'" + name + "', sung by " + description + ", has the following price: " + price + "."
#   end

# end

# song = Song.new("Beyond the Sea", "Bobby Darin", "Somewhere beyond the sea, Somewhere waiting for me, My lover stands on golden sands, And watches the ships that go sailin'")

# puts song.info

# Create a new class called Product, that will produce products that are available for sale.
#   Each product should have a name, a description, and a price.
#   It should have methods that return these three essential attributes.
#   It should also have additional methods that allow us to change those attributes.
#   Next, add a method called tax that returns the price multiplied by 0.09 (which will represent sales tax.) This tax method should call the ‘price’ method.
#   Next add a method called total which returns the sum of the price plus the tax. This method should reference both the price method as well as the tax method.

class Product

  def initialize(name, description, price)
    @name = name
    @description = description
    @price = price
  end

  def name=(text)
    @name = text
  end

  def name
    @name
  end

  def description=(text)
    @description = text
  end

  def description
    @description
  end

  def price=(text)
    @price = text
   end

  def price
    @price
  end

  def tax
    (price * 0.09).round(2)
  end

  def total
    (price + tax).round(2)
  end

  def info
    name.capitalize + ", " + description + ", costs $" + '%.02f' % total + ". This price includes the product cost of $" + '%.02f' % price + " and sales tax of $" + '%.02f' % tax + "."
  end

end

prod1 = Product.new('widget', 'a well-designed widget', 1.00)
puts prod1.info

prod2 = Product.new('deluxe widget', 'an even better-designed widget', 3.50)
puts prod2.info

prod3 = Product.new('executive widget', 'a widget for the executive', 7.25)
puts prod3.info
