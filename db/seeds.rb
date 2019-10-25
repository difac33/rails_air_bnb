# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.destroy_all
Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all

cities = []
dogs = []
dogsitters = []
cities_array = ["Bordeaux", "Paris", "Lille"]
cities_array.each do |city|
  cities << City.create(city_name: city)
end

10.times do |index|
  dogs << Dog.create(name: Faker::Superhero.name, city: cities.sample)
end

10.times do |index|
  dogsitters << Dogsitter.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: cities.sample)
end

20.times do |index|
  the_dog = dogs.sample
  the_dogsitter = dogsitters.select{ |dogsitter| dogsitter.city == the_dog.city }.sample
  # on sélectionne seulement les dogsitters qui sont dans la même ville que le dog
  # on sélectionne un des dogsitters avec la méthode .sample
  Stroll.create(dog: the_dog, dogsitter: the_dogsitter)
end
