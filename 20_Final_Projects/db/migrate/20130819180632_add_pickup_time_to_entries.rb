class AddPickupTimeToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :pickup_time, :string
  end
end
