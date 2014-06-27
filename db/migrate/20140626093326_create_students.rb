class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :email_address
      t.integer :phone_number

      t.timestamps
    end
  end
end
