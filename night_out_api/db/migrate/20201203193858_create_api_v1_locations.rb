class CreateApiV1Locations < ActiveRecord::Migration[6.0]
  def change
    create_table :api_v1_locations do |t|
      t.string :neighborhood
      t.string :image

      t.timestamps
    end
  end
end
