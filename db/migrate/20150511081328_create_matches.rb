class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.references :team_1
      t.references :team_2
		t.integer :match_type
      t.timestamps null: false
    end
  end
end
