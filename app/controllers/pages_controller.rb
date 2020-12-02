class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @meals = Meal.all
  end

  def profile
    @user = current_user
    @owneruser = UserSelection.where(user: @user)
    # Recuperer la wine_region les plus save

  end
end
