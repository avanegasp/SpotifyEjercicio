# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Artist.delete_all

  5.times do Artist.create(name:Faker::Music.band, image_url:"https://martinmorblog.files.wordpress.com/2013/04/backstreet-boys-4fe94c3a30161.jpg" )

  5.times do Album.create(name:Faker::Music.album, image_url:"http://assets.rollingstone.com/assets/images/list/08267a66ee69f56a960fb6e16455794bba382157.jpg", released_at:2001, artist_id:33)
  end
end
