class ChangeCommentsColums < ActiveRecord::Migration
  def change
    remove_column :comments, :product_id , :integer
  end
  def change
    remove_column :comments, :user_id , :integer
  end
end
