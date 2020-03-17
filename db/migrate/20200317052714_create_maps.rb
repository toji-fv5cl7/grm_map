class CreateMaps < ActiveRecord::Migration[6.0]
  def change
    create_table :maps do |t|
      t.string :name
      t.string :type
      t.integer :price
      t.string :cosing_day
      t.time :open_time
      t.time :close_time
      t.text :website
      t.text :photo1
      t.text :photo2
      t.text :photo3

      t.timestamps
    end
  end
end
