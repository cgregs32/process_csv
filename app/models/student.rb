class Student < ApplicationRecord
  validates_pressence_of :full_name

  has_many :grades, optional: true
  has_many :courses, through: :grades
end
