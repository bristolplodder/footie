class CreateMasters < ActiveRecord::Migration
  def self.up
    create_table :masters do |t|
      t.string :home
      t.integer :homescore
      t.string :away
      t.integer :awayscore

      t.timestamps
    end
  end

  def self.down
    drop_table :masters
  end
end
