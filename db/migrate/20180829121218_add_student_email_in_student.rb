class AddStudentEmailInStudent < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :student_email, :string
  end
end
