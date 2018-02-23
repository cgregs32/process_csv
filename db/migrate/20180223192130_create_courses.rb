class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :class_name, null: false

      t.timestamps
    end
  end
end
