# Assume that we see this inside irb:
# hash["a"].capitalize + hash["b"] + hash["c"].upcase
# TypeError: no implicit conversion of nil into String
#   from (irb):4:in `+'
# Create hash that would cause us to get this error.

hash = {"a" => "apple", "c" => "cat"}
hash["a"].capitalize + hash["b"] + hash["c"].upcase


# Let's say we have an empty hash assigned to a variable called 'hash'. If we were to say:
# hash["wat"]
# what would it return?
hash = {}
hash["wat"]  # nil


# Next, define the above hash in a way so that it would return the number 0 instead.
hash = Hash.new(0)
hash["wat"]  # 0

