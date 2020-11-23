class CreateCookingMethods < ActiveRecord::Migration[6.0]
  def change
    create_table :cooking_methods do |t|
      t.string :name

      t.timestamps
    end
  end
end
