class ChangeProductTablleAgainA < ActiveRecord::Migration
  def change
    add_column :opsystems, :product_id, :integer
  end
  def change
    remove_column :products, :opsystem_id, :integer
  end
end
