# == Schema Information
#
# Table name: trackers
#
#  id         :integer          not null, primary key
#  reps       :integer
#  sets       :integer
#  weight     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class Tracker < ApplicationRecord

  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id" })
  
end
