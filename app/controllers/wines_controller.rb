class WinesController < ApplicationController
  def index

    # @search = Meal.where(title: params[:query])


    search = "Blanquette de Veau"
    # to replace with search result if correct
    @meal = Meal.all.find do |meal|
      meal.name == search
    end
    @wines = Wine.all
    @suggestion = Suggestion.all.find do |suggestion|
      (suggestion.main_category == @meal.main_category) && (suggestion.cooking_method == @meal.cooking_method)
    end
    @wine_selection = @wines.select do |wine|
      (wine.wine_region == @suggestion.wine_region) && (wine.wine_type == @suggestion.wine_type)
    end
  end

  def show
    @wine = Wine.find(params[:id])
  end
end
