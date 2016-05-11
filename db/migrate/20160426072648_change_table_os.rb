class ChangeTableOs < ActiveRecord::Migration
  def change
    rename_table :os, :opsystems
  end
end
