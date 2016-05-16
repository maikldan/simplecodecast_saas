class ChangeProductTablleAgain < ActiveRecord::Migration
  def change
    remove_column :products, :opsystem_id, :integer
  end
end
