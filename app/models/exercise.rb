# == Schema Information
#
# Table name: exercises
#
#  id           :integer          not null, primary key
#  category     :string
#  description  :text
#  image        :string
#  name         :string
#  primary_type :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Exercise < ApplicationRecord

  validates :name, :uniqueness => { :case_sensitive => false }
  validates :name, :presence => true

end
