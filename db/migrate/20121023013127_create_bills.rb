class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :name
      t.integer :user_id
      t.integer :type_id
      t.integer :total_items
      t.integer :total_users
      t.date :bill_date

      t.timestamps
    end
  end
end
