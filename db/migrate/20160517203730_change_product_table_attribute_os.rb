class ChangeProductTableAttributeOs < ActiveRecord::Migration
  def change
   remove_column :products, :opsystem_id, :integer
  end
end
