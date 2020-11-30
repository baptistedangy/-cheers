class UserSelectionsController < ApplicationController

  def index
    @user_selections = UserSelection.where(:user_id => current_user.id)
  end

  def dashboard
  end

  def destroy
    @user_selection = UserSelection.find(params[:id])
    @user_selection.destroy
    redirect_to user_selections_path
  end

  def like
    @wine = Wine.all.find(params[:id])
  end

  def create
    @wine = Wine.find(params[:wine_id])
    @user_selection = UserSelection.new(user_selection_params)
    @user_selection.user_id = current_user.id
    @user_selection.wine_id = @wine.id
    @user_selection.meal_id = Meal.where(name: session[:meal]).first.id
    if @user_selection.save!
      redirect_to user_selections_path
    else
      render :new
    end
  end


  private

  def user_selection_params
    params.permit(:meal_id, :wine_id)
  end
end
