class CreateGrades < ActiveRecord::Migration[5.1]
  def change
    create_table :grades do |t|
      t.string :grade_code, null: false
      t.belongs_to :student, foreign_key: true
      t.belongs_to :course, foreign_key: true, uniqueness: true

      t.timestamps
    end
  end
end
