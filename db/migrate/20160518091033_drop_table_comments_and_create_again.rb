class DropTableCommentsAndCreateAgain < ActiveRecord::Migration
  def change
   
  drop_table :comments
  
    create_table :comments do |t|
      t.belongs_to :product, index: true
      t.belongs_to :user, index: true
      t.text :comment_text
      t.timestamps null: false
    end
  end
end
