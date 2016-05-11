class ChancgeProductsTable < ActiveRecord::Migration
  def change
    rename_column :products, :opsystems, :opsystem_id
  end
end
