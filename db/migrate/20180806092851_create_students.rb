class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :ernumber
      t.string :email
      t.string :mobile_no

      t.timestamps
    end
  end
end
