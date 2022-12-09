class Tutor < ApplicationRecord
    has_many :students
    has_many :appointments
    has_many :courses
end
