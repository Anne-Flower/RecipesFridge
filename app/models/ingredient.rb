class Ingredient < ApplicationRecord
  has_many :recipe_ingredients
  has_many :recipes, throught: :recipe_ingredients
end
