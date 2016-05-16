class ChangeProductBdTableThre < ActiveRecord::Migration
  def change
    add_column :opsystems, :product_id, :integer
  end
end
