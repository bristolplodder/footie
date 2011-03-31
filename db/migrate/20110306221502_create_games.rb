class CreateGames < ActiveRecord::Migration
  def self.up
    create_table :games do |t|
      t.string :name
	  t.integer :user_id
      t.string :home
      t.integer :home_score
      t.string :away
      t.integer :away_score

      t.timestamps
    end
	add_index :games, user_id
  end

  def self.down
    drop_table :games
  end
end
