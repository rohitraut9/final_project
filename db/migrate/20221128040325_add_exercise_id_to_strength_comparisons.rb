class AddExerciseIdToStrengthComparisons < ActiveRecord::Migration[6.0]
  def change
    add_column :strength_comparisons, :exercise_id, :integer
  end
end
