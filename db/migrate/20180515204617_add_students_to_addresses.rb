class AddStudentsToAddresses < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :student_id, :integer
  end
end
