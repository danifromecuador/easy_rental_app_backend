class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.references :user, null: false, foreign_key: true
      t.string :type
      t.string :city
      t.string :image
      t.integer :price
      t.text :description
      t.integer :guests
      t.integer :bedrooms
      t.integer :beds
      t.integer :baths

      t.timestamps
    end
  end
end
