class ChangeShiftColumnInInstructors < ActiveRecord::Migration
  def change
    rename_column :instructors, :shift, :email
  end
end
