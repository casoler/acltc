# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Recipe.new(title: 'Apple Pie', chef: 'Tully', ingredients: 'Apples, Cinnamon', directions: 'Slice apples', prep_time: '20 minutes').save

