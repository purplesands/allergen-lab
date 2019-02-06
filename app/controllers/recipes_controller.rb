class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(recipe_params)
    if @recipe.valid?
      @recipe.save
      redirect_to @recipe
    else
      flash[:errors] = @recipe.errors.full_messages
      redirect_to new_recipe_path
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end


  private

  def recipe_params
    params.require(:recipe).permit(:name, :user_id, :user_name)
  end

end
