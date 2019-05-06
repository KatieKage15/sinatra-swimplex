class CreateInstructorsTable < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :email
      t.string :username
      t.string :password_digest
    end
  end
end
