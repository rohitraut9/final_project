class AddDescriptionPrimaryTypeImageToExercises < ActiveRecord::Migration[6.0]
  def change
    add_column :exercises, :description, :text
    add_column :exercises, :primary_type, :string
    add_column :exercises, :image, :string
  end
end
