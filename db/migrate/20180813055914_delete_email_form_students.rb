class DeleteEmailFormStudents < ActiveRecord::Migration[5.2]
  def change
    remove_column :students, :email, :string
  end
end
