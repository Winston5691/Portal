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
require "test_helper"

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
