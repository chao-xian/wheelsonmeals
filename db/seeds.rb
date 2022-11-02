# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Ingredients
Ingredient.create(
  [
    {name: "mince"},
    {name: "spaghetti"},
    {name: "celery"},
    {name: "onion"},
    {name: "carrot"},
    {name: "garlic"},
    {name: "white wine"},
    {name: "tomato puree"}
  ]
)

spag_bol = Dish.create(
  {name: "Spaghetti Bolognaise"}
)

Ingredient.find_each do |ingredient|
  spag_bol.ingredients << ingredient
end
