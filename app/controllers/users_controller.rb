class UsersController < ApplicationController
  before_action :set_user

  def show
    @user_ingredients = session[:user_ingredients] || []
  end

  def add_ingredient
    ingredient = {
      id: SecureRandom.uuid,
      name: params[:ingredient_name],
      quantity: params[:quantity],
      unit: params[:unit]
    }

    session[:user_ingredients] ||= []
    session[:user_ingredients] << ingredient

    @user_ingredients = session[:user_ingredients]

    respond_to do |format|
      format.turbo_stream { render turbo_stream: turbo_stream.replace("user_ingredients", partial: "users/ingredients_list") }
      format.html { redirect_to user_path(@user) }
    end
  end

  def remove_ingredient
    session[:user_ingredients].reject! { |ingredient| ingredient["id"] == params[:id] }
    @user_ingredients = session[:user_ingredients]

    respond_to do |format|
      format.turbo_stream { render turbo_stream: turbo_stream.replace("user_ingredients", partial: "users/ingredients_list") }
      format.html { redirect_to user_path(@user) }
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
