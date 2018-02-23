class Grade < ApplicationRecord
  validates_pressence_of :grade_code

  belongs_to :student
  belongs_to :course
  has_one :grade_code
end
