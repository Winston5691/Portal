# == Schema Information
#
# Table name: students
#
#  id             :integer          not null, primary key
#  course_id      :uuid
#  appointment_id :uuid
#  name           :string
#  email          :string
#  registration   :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :integer
#  results_id     :integer
#
class Student < ApplicationRecord
    has_many :courses
    has_many :tutor
    has_many :appointment
    has_many :results, dependent: :destroy
    belongs_to :user
end
