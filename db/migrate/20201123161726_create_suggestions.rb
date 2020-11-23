class CreateSuggestions < ActiveRecord::Migration[6.0]
  def change
    create_table :suggestions do |t|
      t.references :wine_region, null: false, foreign_key: true
      t.references :wine_type, null: false, foreign_key: true
      t.references :cooking_method, null: false, foreign_key: true
      t.references :main_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
