# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([{name: "Sarah"},{name: "Joe"},{name: "MC"}])
Recipe.create([{name: "Soup", user_id: 2},{name: "Sandwich", user_id: 2},{name: "Hotdog", user_id: 3}])
Ingredient.create([{name: "Sausage"},{name: "Potato"},{name: "Carrot"},{name: "Onion"},{name: "Bread"},{name: "Ham"},{name: "Mayonnaise"},{name: "Cheese"}])

Allergen.create([{user_id: 1, ingredient_id: 1},{user_id: 2, ingredient_id: 2}])
RecipeIngredient.create([{recipe_id: 1, ingredient_id: 1},{recipe_id: 1, ingredient_id: 2}])
