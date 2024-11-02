class AddUnitToRecipeIngredients < ActiveRecord::Migration[7.2]
  def change
    add_reference :recipe_ingredients, :unit, null: false, foreign_key: true
  end
end
