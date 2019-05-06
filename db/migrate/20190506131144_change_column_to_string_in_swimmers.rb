class ChangeColumnToStringInSwimmers < ActiveRecord::Migration
  def change
    change_column :swimmers, :notes, :string
  end
end
