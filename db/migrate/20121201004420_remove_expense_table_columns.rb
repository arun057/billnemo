class RemoveExpenseTableColumns < ActiveRecord::Migration
  def up
  	remove_column :expenses , :split
  	remove_column :expenses , :split_type
  	add_column :userexpenses, :expense_id, :integer
  end

  def down
  	remove_column :userexpenses, :expense_id
  	add_column :expenses, :split, :integer
  	add_column :expenses, :split_type, :integer
  end
end
