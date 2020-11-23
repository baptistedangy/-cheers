class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.references :main_category, null: false, foreign_key: true
      t.references :cooking_method, null: false, foreign_key: true

      t.timestamps
    end
  end
end
