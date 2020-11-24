class UserSelectionsController < ApplicationController
  def index
    @user_selections = User_selection.all
  end

  def destroy
    @user_selection = User_selection.find(params[:id])
    @user_selection.destroy
    redirect_to user_selections_path
  end

  def like
    @wine = Wine.all.find(params[:id])

  end
end
