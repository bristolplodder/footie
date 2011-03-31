class CreatePredictions < ActiveRecord::Migration
  def self.up
    create_table :predictions do |t|
      t.integer :user_id
      t.string :home
      t.integer :home_score
      t.string :away
      t.integer :away_score
	  t.references :user

      t.timestamps
    end
	add_index :predictions, :user_id
  end

  def self.down
    drop_table :predictions
  end
end
