class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :FirstName
      t.string :LastName
      t.integer :Age
      t.string :Email

      t.timestamps
    end
  end
end
