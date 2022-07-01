# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Post.destroy_all

10.times do |index|
  Post.create!(title: "Título #{index}",
                excerpt: "Resumen #{index}",
                body: "Cuerpo #{index}",
                coverpic: "https://loremflickr.com/cache/resized/5328_9235420928_9c8e9c8f7a_320_240_nofilter.jpg",
                category: "Web3")
end
