class ChangeColumnNameInInstructor < ActiveRecord::Migration
  def change
    rename_column :instructors, :name, :username
  end
end
