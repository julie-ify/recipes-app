# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

juliana = User.create(name: 'Juliana')

recipe1 = Recipe.create(name: 'Cookies', preparation_time: "60 min", cooking_time: '10', description: 'Lorem ipsum', users_id: juliana.id)
recipe1 = Recipe.create(name: 'Stew', preparation_time: "60 min", cooking_time: '10', description: 'Lorem ipsum', users_id: juliana.id)
