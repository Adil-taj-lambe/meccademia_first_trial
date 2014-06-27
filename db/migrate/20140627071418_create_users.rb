class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :mobile_number
      t.string :email
      t.string :encrypted_password
      t.string :user_name

      t.timestamps
    end
  end
end
