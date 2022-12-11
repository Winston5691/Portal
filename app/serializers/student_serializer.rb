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
#
class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :registration, :created_at
  has_many :results, include_nested_associations: true
  belongs_to :user, include_nested_associations: true
  
end
