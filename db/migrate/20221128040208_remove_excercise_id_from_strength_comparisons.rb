class RemoveExcerciseIdFromStrengthComparisons < ActiveRecord::Migration[6.0]
  def change
    remove_column :strength_comparisons, :excercise_id
  end
end
