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
require "test_helper"

class ResultTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
