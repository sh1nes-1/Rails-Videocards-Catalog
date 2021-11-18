class CreateVideoCardProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :video_card_products do |t|
      t.references :video_card, foreign_key: true
      t.string :title
      t.integer :min_price
      t.integer :max_price
      t.string :image_url
      t.string :reference_url

      t.timestamps
    end
  end
end
