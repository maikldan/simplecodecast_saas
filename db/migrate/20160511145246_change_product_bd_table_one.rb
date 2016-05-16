class ChangeProductBdTableOne < ActiveRecord::Migration
  def change
    remove_column :opsystems, :product_id, :integer
  end
  def change
    add_column :products, :opsystem_id, :integer
  end
end
