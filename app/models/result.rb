# == Schema Information
#
# Table name: results
#
#  id         :integer          not null, primary key
#  percentage :integer
#  course_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  student_id :integer
#
class Result < ApplicationRecord
    belongs_to :student
    belongs_to :course
end
