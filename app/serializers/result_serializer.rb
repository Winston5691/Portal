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
class ResultSerializer < ActiveModel::Serializer
  attributes :id, :percentage, :created_at, :course, :grade

  belongs_to :course, include_nested_associations: true

  def course
    return Course.find_by(id: object.course_id)
  end
  def grade
    if object.percentage <= 20
    return 'D'
    elsif object.percentage <= 40
      return 'C'
    elsif object.percentage <= 60
     return 'B'
    else
     return 'A'
    end
  end
end
