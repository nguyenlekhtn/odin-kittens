# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Kitten.delete_all

Kitten.create(name: "Mew", age: 1000, cuteness: 10, softness: 10)
Kitten.create(name: "Purrloin", age: 8, cuteness: 5, softness: 8)
Kitten.create(name: "Meowt", age: 10, cuteness: 2, softness: 3)
Kitten.create(name: "Sprigatito", age: 3, cuteness: 8, softness: 8)
Kitten.create(name: "Litten", age: 4, cuteness: 9, softness: 7)
