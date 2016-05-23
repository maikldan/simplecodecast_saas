class CreateTableCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :categoria
      t.timestamps null: false
    end
  end
end
