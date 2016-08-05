json.array! @dogs.each do |dog|
    json.partial! 'dog.json.jbuilder', dog: dog
end
