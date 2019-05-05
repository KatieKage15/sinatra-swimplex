class CreateInstructors < ActiveRecord::Migration
  def change
    create_table instructors do |t|
      t.string :name
      t.string :shift
      t.integer :pay_rate
    end
  end
end
