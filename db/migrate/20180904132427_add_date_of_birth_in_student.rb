class AddDateOfBirthInStudent < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :date_of_birth, :string
  end
end
