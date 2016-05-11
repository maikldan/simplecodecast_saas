class ChangeTableProducts < ActiveRecord::Migration
  def change
    rename_column :products, :os, :opsystems
  end
end
