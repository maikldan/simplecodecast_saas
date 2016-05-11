class ChangeProductsTable < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.change :os, :integer
    end
  end
end
