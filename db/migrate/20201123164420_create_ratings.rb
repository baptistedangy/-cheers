class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.text :comment
      t.integer :note
      t.references :user_selection, null: false, foreign_key: true

      t.timestamps
    end
  end
end
