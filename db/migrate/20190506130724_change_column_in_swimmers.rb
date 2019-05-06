class ChangeColumnInSwimmers < ActiveRecord::Migration
  def change
    rename_column :swimmers, :level, :notes
  end
end
