class CreateFineCollections < ActiveRecord::Migration
  def change
    create_table :fine_collections do |t|
      t.decimal :fine_amount
      t.datetime :due_date
      t.datetime :return_date

      t.timestamps
    end
  end
end
