class Course < ApplicationRecord
  validates_pressence_of :class_name

  has_many :grades
  has_many :students, through: :grades 

end
