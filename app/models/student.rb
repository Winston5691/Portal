class Student < ApplicationRecord
    has_many :courses
    has_many :tutor
    has_many :appointment
    has_many :results, dependent: :destroy
    belongs_to :user
end
