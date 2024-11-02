class Unit < ApplicationRecord
  has_many :recipe_ingredients
  validates :name, presence: true, uniqueness: true
  validates :abbreviation, presence: true, uniqueness: true
end
