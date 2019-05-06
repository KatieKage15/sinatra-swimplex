class AddColumnToSwimmers < ActiveRecord::Migration
  def change
    add_column :swimmers, :instructor_id, :integer
  end
end
