class CreateCommentsTable < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :coment
    end
  end
end
