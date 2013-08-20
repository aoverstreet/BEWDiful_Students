class AddAttributesToUser < ActiveRecord::Migration
  def change
    add_column :users, :street1, :string
    add_column :users, :street2, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :zipcode, :string
    add_column :users, :phone, :string
  end
end
