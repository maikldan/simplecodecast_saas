class ChangeTwoTablesToaddComments < ActiveRecord::Migration
  def change
    add_column :products, :comment_id, :integer
  end
  def change
    add_column :users, :comment_id, :integer
  end
end
