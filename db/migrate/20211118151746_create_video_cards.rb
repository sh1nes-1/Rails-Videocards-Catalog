class CreateVideoCards < ActiveRecord::Migration[6.1]
  def change
    create_table :video_cards do |t|
      t.references :manufacturer, foreign_key: true
      t.string :gpu_name
      t.string :memory_capacity
      t.string :memory_frequency
      t.string :memory_type

      t.timestamps
    end
  end
end
