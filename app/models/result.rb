# == Schema Information
#
# Table name: results
#
#  id         :integer          not null, primary key
#  percentage :integer
#  course_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Result < ApplicationRecord
    belongs_to :student
end
