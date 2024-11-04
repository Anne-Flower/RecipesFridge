class RecipesController < ApplicationController
  def index
    @recipes = fetch_recipes
  end

  def new
    @recipe = Recipe.new
  end

  def show
    recipe_id = params[:id].to_i
    @recipe = fetch_recipes.find { |recipe| recipe["id"] == recipe_id }
  end

  private

  def fetch_recipes
    file_path = Rails.root.join('app','api_data', 'recipes.json')
    file = File.read(file_path)
    recipes = JSON.parse(file)
    
    recipes.each_with_index do |recipe, index|
      recipe["id"] ||= index + 1
    end
  
    recipes
  rescue StandardError => e
    Rails.logger.error("File read error: #{e.message}")
    []
  end
end
