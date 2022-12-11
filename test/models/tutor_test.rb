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
require "test_helper"

class TutorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
