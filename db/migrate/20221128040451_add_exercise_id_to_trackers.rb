class AddExerciseIdToTrackers < ActiveRecord::Migration[6.0]
  def change
    add_column :trackers, :exercise_id, :integer
  end
end
