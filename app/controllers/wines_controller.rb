class WinesController < ApplicationController
  before_action :set_meal, only: :index

  def index
    if params[:query].present?
      @meals = Meal.all
      @meal = Meal.find_by(name: params[:query])
      @wines = Wine.all
      @suggestion = Suggestion.all.find do |suggestion|
        (suggestion.main_category == @meal.main_category) && (suggestion.cooking_method == @meal.cooking_method)
      end
      @wine_selection = @wines.select do |wine|
        (wine.wine_region == @suggestion.wine_region) && (wine.wine_type == @suggestion.wine_type)
      end
    else
      @wine_selection = Wine.all
    end
  end

  def show
    @wine = Wine.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: { html: render_to_string(partial: "wine-show", formats: :html) } }
    end
  end

  private

  def set_meal
    session[:meal] = params[:query]
  end
end
