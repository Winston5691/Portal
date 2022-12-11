# == Schema Information
#
# Table name: courses
#
#  id         :integer          not null, primary key
#  name       :string
#  results_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Course < ApplicationRecord
end
