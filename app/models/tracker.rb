# == Schema Information
#
# Table name: trackers
#
#  id          :integer          not null, primary key
#  reps        :integer
#  sets        :integer
#  weight      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  exercise_id :integer
#  user_id     :integer
#
class Tracker < ApplicationRecord
  validates :reps, :sets, :weight, :presence => true
  validates :reps, :sets, :weight, numericality: { only_integer: true }  

  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id" })
  belongs_to(:exercise, { :class_name => "Exercise", :foreign_key => "exercise_id" })
  
end
