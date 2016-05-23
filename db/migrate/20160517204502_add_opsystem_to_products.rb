class AddOpsystemToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :opsystem, index: true
  end
end
