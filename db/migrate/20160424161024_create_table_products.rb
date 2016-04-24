class CreateTableProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.text :review
      t.string :os
      t.string :display
      t.string :processor
      t.string   :ram_rom
      t.string   :battery
      t.string   :camera
      t.string   :video
      t.string   :image
    end
  end
end
