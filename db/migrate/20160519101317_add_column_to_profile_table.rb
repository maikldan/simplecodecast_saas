class AddColumnToProfileTable < ActiveRecord::Migration
  def change
    add_column :profiles, :image, :string
  end
end
