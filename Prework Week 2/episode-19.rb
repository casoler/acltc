letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]

index = 0

letters.each do |letter|
  if index % 2 == 0
    puts letter
  end
  index = index + 1
end


letters = [["a", "b"], ["c", "d"], ["e", "f"], ["g", "h"], ["i", "j"]]

letters.each do |letter|
  puts letter[1]
end


numbers = [4, 6, 1, 4, 2, 8, 3, 4, 1, 7]

unique_numbers = []

numbers.each do |number|
  unless unique_numbers.include?(number)
    unique_numbers << number
  end
end

p unique_numbers


fib_numbers = []

fib_num1 = 0
fib_num2 = 1

fib_numbers << fib_num1
fib_numbers << fib_num2

98.times do
  sum = fib_num1 + fib_num2
  fib_numbers << sum
  fib_num1 = fib_num2
  fib_num2 = sum
end

p fib_numbers


array = [["a", "b", "z"], ["c", "d"], ["e", "f"], ["g", "h", "i", "j"]]
new_array = []

array.each do |element|
  if element.is_a?(Array)
    element.each do |el|
      new_array << el
    end
  else
    new_array << element
  end
end

p new_array


