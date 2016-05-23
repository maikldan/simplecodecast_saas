class ChangeCommentsColumsAgain < ActiveRecord::Migration
  def change
    remove_column :comments, :product_id , :integer
  end
end
