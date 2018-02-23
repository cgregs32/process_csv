class Grade < ApplicationRecord
  validates_presence_of :grade_code, :student_id, :course_id
  validates :grade_code, acceptance: { accept: %w(A B C D E),
    message: 'should match (A B C D E)'}

  validates :course, uniqueness: { scope: [:course_id, :student_id],
    message: "should only have one grade per student per course" }

  belongs_to :student
  belongs_to :course
end
