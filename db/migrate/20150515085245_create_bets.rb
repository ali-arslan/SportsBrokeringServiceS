class CreateBets < ActiveRecord::Migration
  def change
    create_table :bets do |t|
		t.references :matchID
		t.references :userID
		t.integer	 :value
      t.timestamps null: false
    end
  end
end
