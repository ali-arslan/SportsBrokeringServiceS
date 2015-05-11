class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.references :team, index: true 
      t.references :team, index: true, as: "matching_team"
      t.timestamps null: false
    end
  end
end
