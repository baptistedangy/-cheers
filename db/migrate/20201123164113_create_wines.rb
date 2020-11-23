class CreateWines < ActiveRecord::Migration[6.0]
  def change
    create_table :wines do |t|
      t.string :name
      t.string :description
      t.string :price
      t.string :millesime
      t.string :cepage
      t.references :wine_region, null: false, foreign_key: true
      t.references :wine_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
