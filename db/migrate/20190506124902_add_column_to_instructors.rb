class AddColumnToInstructors < ActiveRecord::Migration
  def change
    add_column :instructors, :password_digest, :string
  end
end
