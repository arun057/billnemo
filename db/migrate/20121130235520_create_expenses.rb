class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :name
      t.integer :amount
      t.integer :bill_id
      t.integer :split
      t.integer :split_type
      t.boolean :deleted

      t.timestamps
    end
  end
end
