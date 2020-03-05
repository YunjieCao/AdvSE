class AddValueToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :value, :decimal, :precision => 8, :scale => 2
  end
end
