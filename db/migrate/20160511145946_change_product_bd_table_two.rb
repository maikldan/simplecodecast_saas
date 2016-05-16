class ChangeProductBdTableTwo < ActiveRecord::Migration
  def change
    remove_column :opsystems, :product_id, :integer
  end
end
