class CreateApiV1Comments < ActiveRecord::Migration[6.0]
  def change
    create_table :api_v1_comments do |t|
      t.string :title
      t.string :comment
      t.integer :rating
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
