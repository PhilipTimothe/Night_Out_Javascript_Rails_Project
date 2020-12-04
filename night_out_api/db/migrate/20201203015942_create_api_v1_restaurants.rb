class CreateApiV1Restaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :api_v1_restaurants do |t|
      t.string :name
      t.string :cuisine
      t.string :style
      t.string :phone_number
      t.string :menu
      t.string :address
      t.string :image
      t.integer :likes
      t.integer :location_id

      t.timestamps
    end
  end
end
