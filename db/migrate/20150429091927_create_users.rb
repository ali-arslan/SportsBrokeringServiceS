class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :Name
      t.string :Username
      t.integer :Balance
      t.date :DOB
      t.string :password

      t.timestamps null: false
    end
  end
end
