# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# place = Place.create([{ name: "Mexico City" }, { name: "Havana" }, { name: "Bogota" }, { name: "Cartagena" }])
# post = Post.create([ title: "Ate tacos", posted_on: "1-1-19", description: "Loved the birria tacos"], 

Place.destroy_all
Post.destroy_all

mexico_city = Place.new
mexico_city["name"] = "Mexico City"
mexico_city.save

tacos = Post.new
tacos["title"] = "birria tacos"
tacos["description"] = "ate birria tacos"
tacos["posted_on"] = "01/01/2019"
tacos["place_id"] = mexico_city["id"]
tacos.save

libre = Post.new
libre["title"] = "mexican wrestling"
libre["description"] = "watched mexican wrestling"
libre["posted_on"] = "01/02/2019"
libre["place_id"] = mexico_city["id"]
libre.save

havana = Place.new
havana["name"] = "Havana"
havana.save

snorkel = Post.new
snorkel["title"] = "snorkeling"
snorkel["description"] = "went snorkeling at havana beach"
snorkel["posted_on"] = "01/05/2019"
snorkel["place_id"] = havana["id"]
snorkel.save

bogota = Place.new
bogota["name"] = "Bogota"
bogota.save

mural = Post.new
mural["title"] = "mural tour"
mural["description"] = "walking tour of bogota murals"
mural["posted_on"] = "01/10/2019"
mural["place_id"] = bogota["id"]
mural.save


puts "There are now #{Place.all.count} places and #{Post.all.count} posts."