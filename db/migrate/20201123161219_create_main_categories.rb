class CreateMainCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :main_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
