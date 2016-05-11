class CreateTableOs < ActiveRecord::Migration
  def change
    create_table :os do |t|
      t.integer :product_id
      t.string :os
    end
  end
end
