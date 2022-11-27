class CreateStrengthComparisons < ActiveRecord::Migration[6.0]
  def change
    create_table :strength_comparisons do |t|
      t.integer :one_rep_max
      t.integer :user_id

      t.timestamps
    end
  end
end
