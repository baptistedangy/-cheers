class WinesController < ApplicationController
  def index
    if params[:query].present?
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
  end

end
