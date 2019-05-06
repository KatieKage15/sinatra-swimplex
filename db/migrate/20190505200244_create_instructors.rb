class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :email
      t.string :username
      t.string :name
      t.integer :pay_rate
    end
  end
end
