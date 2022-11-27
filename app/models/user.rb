# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  first_name      :string
#  last_name       :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password

  has_many(:trackers, { :class_name => "Tracker", :foreign_key => "user_id", :dependent => :destroy })

  has_many(:strength_comparisons, { :class_name => "StrengthComparison", :foreign_key => "user_id", :dependent => :destroy })
  
end
