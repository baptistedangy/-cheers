class RatingsController < ApplicationController

  def new
    @rating = Rating.new
    respond_to do |format|
      format.html
      format.json { render json: { html: render_to_string(partial: "rating-new", formats: :html) } }
    end
  end

  def create
    @rating = Rating.new(rating_params)
    @user_selection = UserSelection.find(params[:user_selection_id])
    @rating.user_selection = @user_selection
    if @rating.save
      redirect_to user_selections_path
    else
      flash[:alert] = "Something went wrong."
      render :new
    end
  end

  private

  def rating_params
    params.require(:rating).permit(:comment, :note)
  end
end
