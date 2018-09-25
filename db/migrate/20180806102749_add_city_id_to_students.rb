class AddCityIdToStudents < ActiveRecord::Migration[5.2]
  def change
    add_reference :students, :city, foreign_key: true
  end
end
