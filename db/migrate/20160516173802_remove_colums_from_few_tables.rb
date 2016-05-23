class RemoveColumsFromFewTables < ActiveRecord::Migration
  def change
    remove_column :products, :comment_id, :integer
    remove_column :users, :comment_id, :integer
  end
end
