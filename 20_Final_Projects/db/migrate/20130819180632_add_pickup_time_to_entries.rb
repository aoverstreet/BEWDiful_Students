class AddPickupTimeToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :pickup_times, :string
  end
end
