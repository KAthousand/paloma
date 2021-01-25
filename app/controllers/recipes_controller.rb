class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :update, :destroy]
  before_action :authorize_request, only: [:create, :update, :destroy]
  # GET /recipes
  def index
    @recipes = Recipe.all

    render json: @recipes, :include => [:user, {:comments => {:include => :user}}]
  end

  # GET /recipes/1
  def show
    render json: @recipe, include: [:user, :comments]
  end

  # POST /recipes
  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      render json: @recipe, status: :created, location: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recipes/1
  def update
    if @recipe.update(recipe_params)
      render json: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recipes/1
  def destroy
    @recipe.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recipe_params
      params.require(:recipe).permit(:name, :img_url, :amount1, :ingredient1, :amount2, :ingredient2, :amount3, :ingredient3, :amount4, :ingredient4, :amount5, :ingredient5, :amount6, :ingredient6, :amount7, :ingredient7, :amount8, :ingredient8, :amount9, :ingredient9, :amount10, :ingredient10, :garnish, :instructions, :glassware, :history, :flavor_profile, :user_id)
    end
end
