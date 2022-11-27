# == Schema Information
#
# Table name: strength_comparisons
#
#  id          :integer          not null, primary key
#  one_rep_max :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
class StrengthComparison < ApplicationRecord
  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id" })
end
