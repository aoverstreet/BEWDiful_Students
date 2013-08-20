class AddDetailsToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :street1, :string
    add_column :entries, :street2, :string
    add_column :entries, :city, :string
    add_column :entries, :state, :string
    add_column :entries, :zipcode, :string
    add_column :entries, :phone, :string
  end
end
