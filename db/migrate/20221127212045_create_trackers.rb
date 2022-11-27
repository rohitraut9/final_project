class CreateTrackers < ActiveRecord::Migration[6.0]
  def change
    create_table :trackers do |t|
      t.integer :sets
      t.integer :reps
      t.integer :weight
      t.integer :user_id

      t.timestamps
    end
  end
end
