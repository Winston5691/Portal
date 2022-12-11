# == Schema Information
#
# Table name: tutors
#
#  id             :integer          not null, primary key
#  name           :string
#  email          :string
#  course_id      :integer
#  student_id     :integer
#  appointment_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :integer
#
class Tutor < ApplicationRecord
    has_many :students
    has_many :appointments
    has_many :courses
    belongs_to :user
end
