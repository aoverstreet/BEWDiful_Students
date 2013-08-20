class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :name_item
      t.text :description_item
      t.string :images
      t.string :category
      t.date :pickup_date
      t.integer :user_id
      

      t.timestamps
    end
  end
end
