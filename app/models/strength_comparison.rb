# == Schema Information
#
# Table name: strength_comparisons
#
#  id          :integer          not null, primary key
#  one_rep_max :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  exercise_id :integer
#  user_id     :integer
#
class StrengthComparison < ApplicationRecord
  validates :one_rep_max, :presence => true
  validates :one_rep_max, numericality: { only_integer: true }  

  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id" })
  belongs_to(:exercise, { :class_name => "Exercise", :foreign_key => "exercise_id" })


end
