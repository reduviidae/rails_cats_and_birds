# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cat.destroy_all

Cat.create(name: "Maru", age: 1, breed: "scottish fold")
Cat.create(name: "Hannah", age: 2, breed: "tabby")
Cat.create(name: "Adelina", age: 14, breed: "persian")

Bird.destroy_all

Bird.create(name: "Birdo", cat_id: Cat.find_by(name: "Adelina").id)
Bird.create(name: "Chirpy", cat_id: Cat.find_by(name: "Adelina").id)
