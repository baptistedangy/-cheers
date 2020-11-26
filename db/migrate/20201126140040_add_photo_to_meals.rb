class AddPhotoToMeals < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :photo, :string
  end
end
